
function centers = celldetect_cht_procedure(videoimg, canny_param, cht_min, cht_max, cht_param_1, cht_param_2, min_cell_sep, resize_param, dark_img_param)

% this function carries out the circular hough transform-based T cell detection procedure



% keep initial image
% ------------------

initimg = videoimg;


% convert to gray (if not already)
% --------------------------------

if length(size(videoimg)) == 3
	videoimg = rgb2gray(videoimg);
end


% resize according to params(1)
% -----------------------------
videoimg = imresize(videoimg, resize_param);


% if dark-img, use histobob
% -------------------------

if dark_img_param == 1
	load histobob_mid
	% videoimg = histeq(videoimg, histobob_mid);  % for slightly lighter
	videoimg = imadjust(histeq(videoimg, histobob_mid), [0.1, 0.5], []);  % for washed-out (but often effective)
end


% combine edge detect with canny and log filters
% ----------------------------------------------
canny = edge(videoimg, 'canny', canny_param);
logfilt = edge(videoimg, 'log', 0.001);

% change:
% canny(find(logfilt==1))=1;

for i = 1 : size(logfilt, 1)
	for l = 1 : size(logfilt, 2)
		if logfilt(i, l) == 1
			canny(i, l) = 1;
		end
	end
end
test = im2uint8(canny);


% circular hough transform
% ------------------------

[accum, circen, cirrad] = CircularHough_Grd(test, [cht_min cht_max], cht_param_1, cht_param_2);  % canned function

centers = circen;
% On 7/3/15 I decided that I will remove bad centers via blob check first and then remove duplicate/over-lapping centers based on proximity. 
% the variable names of the proximity check routine had to be changed. 

% remove bad centers via blobcheck (cross reference) first
% --------------------------------------------------

% structured elements list
se90 = strel('line', 4, 90);
se0 = strel('line', 4, 0);
diam = strel('diamond', 3);
disk = strel('diamond', 1);

% take canny image and dilate, fill, erode, and dilate
dil = imdilate(canny, [se90, se0]);
fill = imfill(dil, 'holes');
rawimg = im2uint8(fill);
for b = 1 : 1
	rawimg = imerode(rawimg, diam);
	rawimg = imdilate(rawimg, disk);
end

% Remove centers over/near black space
tokeep = [];
for i = 1 : size(centers, 1)
	xpos = floor(centers(i, 1));
	ypos = floor(centers(i, 2));
    centerCrop=imcrop(rawimg,[(xpos-2) (ypos-2) 4 4]); % gives a 5-by-5 cropped image around the center
    cropInt=mean2(centerCrop);    
	%center = rawimg(ypos, xpos);
	%up = rawimg(ypos+1, xpos);
	%down = rawimg(ypos-1, xpos);
	%left = rawimg(ypos, xpos-1); % corrected from rawimg(ypos-1,xpos) as Willie had it
	%right = rawimg(ypos, xpos+1);
	%centerColor = (center/5) + (up/5) + (down/5) + (left/5) + (right/5);
	%if (centerColor == 255) % Willie had used >153 based on his inspection 
    % Willie was taking only 4-neigbhors whereas I am taking a much wider area
    if cropInt == 255 
        tokeep = [tokeep; i];
	end
end
centers = centers(tokeep, :);

% Remove duplicate/overlapping/too-close centers
% ----------------------------------------------

centers = sortrows(centers); % sorting based on the first column of the matrix, in this case based on x position value
circlesToKeep = [1];
for i = 2 : size(centers, 1)
	toadd = 1;
	for k = 1 : i-1	
		if (norm(centers(i,:) - centers(k,:)) < min_cell_sep)
			toadd = 0;
		end
	end
	if toadd == 1
		circlesToKeep = [circlesToKeep; i];
	end
end
if size(centers, 1) > 0
	centers = centers(circlesToKeep, :);
end


% un-resize detected positions (back to dimensions of original image)
centers(:,1) = centers(:,1)/resize_param;
centers(:,2) = centers(:,2)/resize_param;


% displays detection images. comment this out.
% clf
% imshow(initimg);  % show initial image
% hold on
% plot(centers(:,1), centers(:,2), 'rx', 'Linewidth', 2, 'Markersize', 10);
% hold off
% drawnow

% another version of figures
% close all
% figure, imshow(initimg);  % show initial image
% hold on
% plot(centers(:,1), centers(:,2), 'rx', 'Linewidth', 2, 'Markersize', 10);
% hold off
% pause
