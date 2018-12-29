
function jobs = batchSetup()


% set up batch jobs in this file
jobs = {};



% *************************************************
%                    Job Form
% *************************************************

expName = 'vivekJob01';
dirString = '../../data/benchmarkData/exp2_raromix/img_jpg/'; % relative to home i.e. tcmat/tcmat_v1/src
numChannels = 4;
numFrames = 20;

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 4;
startimg_irm = 1;
startimg_memory = 2;
startimg_naive = 3;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 4;

% params for detection
imageScale = 1.2;
edgeValue = 0.1;
radiusMin = 3;
radiusMax = 13;
gradientThresh = 10;
searchRadius = 16;
minCellSeparation = 5;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 20;
numUmPerPix_convert = 0.439;
arrestCoefficientThreshold = 1.3;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel};
jobs{end+1} = nextJob; 
% *************************************************




% % *************************************************
% %                    Job Form
% % *************************************************

% expName = 'vivekJob02';
% dirString = '../../data/benchmarkData/exp2_raromix/img_jpg/'; % relative to home i.e. tcmat/tcmat_v1/src
% numChannels = 4;
% numFrames = 20;

% % assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
% startimg_dic = 4;
% startimg_irm = 1;
% startimg_memory = 2;
% startimg_naive = 0;

% % assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
% outline_channel = 4;

% % params for detection
% imageScale = 1.2;
% edgeValue = 0.1;
% radiusMin = 3;
% radiusMax = 13;
% gradientThresh = 10;
% searchRadius = 16;
% minCellSeparation = 5;
% darkImage = 0; % 0 or 1
% params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% % conversion and other specifications
% numSecondsBetweenFrames_convert = 20;
% numUmPerPix_convert = 0.439;
% arrestCoefficientThreshold = 1.3;

% nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel};
% jobs{end+1} = nextJob; 
% % *************************************************