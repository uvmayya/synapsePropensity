function [arrestEff,totEncountered]=calcArrestEff(datacell,flurThresh,initSegment)

% datacell should have flur and IRM signals (genTiam output)
% isolates portions of tracks wherein the cell is on the spots based on 'flurThresh'. 
% calculates new encounters and new arrest events 
% all events upto the initSegment are considered to calculate the arrest efficiency

% initializations
arrestEff=0;
videoLength=0;
datacell2 = {}; % holds portions of tracks that are on a spot as new tracks

% calculate the videoLength
for cp=1:length(datacell)
    if datacell{cp}(1,2)>videoLength % 2nd column has the end position of the track
        videoLength=datacell{cp}(1,2);
    end    
end    
if initSegment>videoLength
    disp('Initial video segment to be considered for counting is longer than the video');
    return
end    

% pull out the portions of tracks on the spots
for cp=1:length(datacell)
    t_len = length(datacell{cp}(:,3)); % tracklength
    mat = datacell{cp}; % holds the particular cell-path (or track).
    t=5; % set t=5 to avoid cells attached at the very beginning from calculations
    while(t<=t_len)
        % identify portions where in cell is on the spot
        if datacell{cp}(t,6)>flurThresh % if the signal is above the threshold flurescence
            startPhase=t;
            while(datacell{cp}(t,6)>flurThresh && t<t_len)% to go till the end where the cell leaves the spot
                t=t+1; 
            end
            if t<t_len, endPhase=t-1;
            else endPhase=t; end
            
            newMat = mat(startPhase:endPhase,:);
            newMat(:,1) = mat(1,1) + startPhase - 1; % new start position
            newMat(:,2) = newMat(1,1) + size(newMat,1) - 1; % new end position
            datacell2{end+1} = newMat;
        end
        t=t+1;   
    end
end

% pull out arrested portions of tracks that are on spots
datacell3=keepIrmOnOnly(datacell2);
datacell3 = remove_shortpaths(datacell3,8,videoLength); % anything that is longer than 8 frames (4min) should have arrested.
% function modified from remove_shortpathis from tcmat_forVivek to also include the criterion on the location of the starting frame in relation to the end of the video

% identify new ecounter and attachment events
attached=zeros(videoLength,1);
encountered=zeros(videoLength,1); % moving cells that have encountered a spot
for i=1:videoLength
    for j=1:length(datacell2)
        if datacell2{j}(1,1)==i, encountered(i)=encountered(i)+1; end
    end    
    for j=1:length(datacell3)
        if datacell3{j}(1,1)==i, attached(i)=attached(i)+1; end
    end
end

totEncountered=sum(encountered(1:initSegment));
totAttached=sum(attached(1:initSegment));
arrestEff=totAttached/totEncountered;

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