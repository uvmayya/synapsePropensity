function [type1Ct, type2Ct, noTypeCt]= getCellTypeCounts(datacell)

type1Ct=0; type2Ct=0; noTypeCt=0;

for i = 1:length(datacell)
    if datacell{i}(1,8)==1
        type1Ct=type1Ct+1;
    elseif datacell{i}(1,8)==2
        type2Ct=type2Ct+1;
    elseif datacell{i}(1,8)==0
        noTypeCt=noTypeCt+1;
    end    
end

end

