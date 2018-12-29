function totAttached=countAttached(datacell,initSegment)
% intended for use on results of cells already masked for spots and IRM at image processing stage

% calculate the videoLength
videoLength=0;
for cp=1:length(datacell)
    if datacell{cp}(1,2)>videoLength % 2nd column has the end position of the track
        videoLength=datacell{cp}(1,2);
    end    
end    
if initSegment>videoLength
    disp('Initial video segment to be considered for counting is longer than the video');
    return
end    

datacell = remove_shortpaths(datacell,8,videoLength); % anything that is longer than 8 frames (4min) should have arrested.
% function modified from remove_shortpathis from tcmat_forVivek to also include the criterion on the location of the starting frame in relation to the end of the video

% identify new attachment events
attached=zeros(videoLength,1);
for i=1:videoLength
    for j=1:length(datacell)
        if datacell{j}(1,1)==i, attached(i)=attached(i)+1; end
    end
end

totAttached=sum(attached(1:initSegment));

end

function datacell_longpath = remove_shortpaths(datacell,minpathlength,videoLength)
% return datacell with paths whose length is less than (or equal to) minpathlength removed 

holder = [];
for i = 1:length(datacell)
	if size(datacell{i},1)>minpathlength || datacell{i}(1,1)>=(videoLength-minpathlength)
        % keep if track length is longer than minimum and if the starting frame is too close to the end
		holder = [holder,i];
	end
end
datacell_longpath = datacell(holder);
end
