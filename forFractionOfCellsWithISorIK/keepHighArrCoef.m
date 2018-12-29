
function newDatacell = keepHighArrCoef(datacell, thresh)


% this function returns a newDatacell that only keeps the entries in an input datacell with 

newDatacell = {};
for i = 1:length(datacell)
    mat = datacell{i};
    if mat(1,14)>thresh % arrCoeff > threshs
        newDatacell{end+1} = mat;
    end
end