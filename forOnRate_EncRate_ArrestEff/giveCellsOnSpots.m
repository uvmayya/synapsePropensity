function cellsOnSpotsTable=giveCellsOnSpots(datacell) %function cellsOnSpotsTable=giveCellsOnSpots(datacell)

%datacell=remove_shortpaths(datacell,10);
noOfTracks = size(datacell, 2); % or length(datacell)

endFrame=0;
for cp=1:noOfTracks
    if datacell{cp}(1,2)>endFrame
        endFrame=datacell{cp}(1,2);
    end
end    
cellsOnSpotsTable=zeros(endFrame,2);

for fr=1:endFrame
    count=0;
    for cp=1:noOfTracks
        if fr>=datacell{cp}(1,1) && fr<=datacell{cp}(1,2)
            count=count+1;
        end
    end
    cellsOnSpotsTable(fr,1)=fr;
    cellsOnSpotsTable(fr,2)=count;
end

%save('cellsOnSpotsTable', 'cellsOnSpotsTable');