function [fracType1, fracType2, fracNoType]= calcFractSynapse(datacell)

[ct1Before,ct2Before, ctBefore]=getCellTypeCounts(datacell);
datacellAtt = keepIrmOnOnly(datacell);
datacellAtt = get_arrestCoefficient(datacellAtt, 3, 10);
% use 2um/min as the threshold speed to account for kinapse motility, 10th column for step-4 speed
datacellAtt = keepHighArrCoef(datacellAtt, 0.4); % keeps cells that have lower than 2um/min for more than 40% of the time
[ct1After,ct2After, ctAfter]=getCellTypeCounts(datacellAtt);

fracType1=ct1After/ct1Before;
fracType2=ct2After/ct2Before;
fracNoType=ctAfter/ctBefore;

end