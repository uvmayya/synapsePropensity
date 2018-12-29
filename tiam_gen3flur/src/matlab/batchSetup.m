
function jobs = batchSetup()

% set up batch jobs in this file
jobs = {};


% *************************************************
%                    Job Form 1
% *************************************************

expName = 'fc11_ctrl';
dirString = '../../../data/LSM710/2011/101411_motility/last60frames/fc11_ctrl/'; % relative to home i.e. tcmat/tcmat_v1/src
numChannels = 1;
numFrames = 61;

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 1;
startimg_irm = 0;
startimg_memory = 0;
startimg_naive = 0;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 1;

% params for detection
imageScale = 1.5;
edgeValue = 0.1;
radiusMin = 5;
radiusMax = 15;
gradientThresh = 10;
searchRadius = 15;
minCellSeparation = 7;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 20;
numUmPerPix_convert = 0.664;
arrestCoefficientThreshold = 2.0;

% save only irm-attached cells (0 for all cells, 1 for irm-attached only)
wantIrmOnly = 0;

% remove paths shorter than a given threshold (set threshold to 0 to leave datacell untouched; otherwise, this removes all paths of length shorter than threshold)
removeShortPaths_threshold =  4;

% max tracking jump threshold
maxTrackingJump = 20;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel, wantIrmOnly, removeShortPaths_threshold, maxTrackingJump};
jobs{end+1} = nextJob; 
% *************************************************


% *************************************************
%                    Job Form 6
% *************************************************

expName = 'fc6_bleb';
dirString = '../../../data/LSM710/2011/101411_motility/last60frames/fc6_bleb/'; % relative to home i.e. tcmat/tcmat_v1/src
numChannels = 1;
numFrames = 61;

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 1;
startimg_irm = 0;
startimg_memory = 0;
startimg_naive = 0;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 1;

% params for detection
imageScale = 1.5;
edgeValue = 0.1;
radiusMin = 5;
radiusMax = 15;
gradientThresh = 10;
searchRadius = 16;
minCellSeparation = 7;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 20;
numUmPerPix_convert = 0.664;
arrestCoefficientThreshold = 2.0;

% save only irm-attached cells (0 for all cells, 1 for irm-attached only)
wantIrmOnly = 0;

% remove paths shorter than a given threshold (set threshold to 0 to leave datacell untouched; otherwise, this removes all paths of length shorter than threshold)
removeShortPaths_threshold =  4;

% max tracking jump threshold
maxTrackingJump = 20;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel, wantIrmOnly, removeShortPaths_threshold, maxTrackingJump};
jobs{end+1} = nextJob; 
% *************************************************


% *************************************************
%                    Job Form 7
% *************************************************

expName = 'fc7_ML7';
dirString = '../../../data/LSM710/2011/101411_motility/last60frames/fc7_ML7/'; % relative to home i.e. tcmat/tcmat_v1/src
numChannels = 1;
numFrames = 61;

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 1;
startimg_irm = 0;
startimg_memory = 0;
startimg_naive = 0;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 1;

% params for detection
imageScale = 1.5;
edgeValue = 0.1;
radiusMin = 5;
radiusMax = 15;
gradientThresh = 10;
searchRadius = 16;
minCellSeparation = 7;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 20;
numUmPerPix_convert = 0.664;
arrestCoefficientThreshold = 2.0;

% save only irm-attached cells (0 for all cells, 1 for irm-attached only)
wantIrmOnly = 0;

% remove paths shorter than a given threshold (set threshold to 0 to leave datacell untouched; otherwise, this removes all paths of length shorter than threshold)
removeShortPaths_threshold =  4;

% max tracking jump threshold
maxTrackingJump = 20;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel, wantIrmOnly, removeShortPaths_threshold, maxTrackingJump};
jobs{end+1} = nextJob; 
% *************************************************


% *************************************************
%                    Job Form 8
% *************************************************

expName = 'fc8_Y27';
dirString = '../../../data/LSM710/2011/101411_motility/last60frames/fc8_Y27/'; % relative to home i.e. tcmat/tcmat_v1/src
numChannels = 1;
numFrames = 61;

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 1;
startimg_irm = 0;
startimg_memory = 0;
startimg_naive = 0;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 1;

% params for detection
imageScale = 1.5;
edgeValue = 0.1;
radiusMin = 5;
radiusMax = 15;
gradientThresh = 10;
searchRadius = 16;
minCellSeparation = 7;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 20;
numUmPerPix_convert = 0.664;
arrestCoefficientThreshold = 2.0;

% save only irm-attached cells (0 for all cells, 1 for irm-attached only)
wantIrmOnly = 0;

% remove paths shorter than a given threshold (set threshold to 0 to leave datacell untouched; otherwise, this removes all paths of length shorter than threshold)
removeShortPaths_threshold =  4;

% max tracking jump threshold
maxTrackingJump = 20;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel, wantIrmOnly, removeShortPaths_threshold, maxTrackingJump};
jobs{end+1} = nextJob; 
% *************************************************


% *************************************************
%                    Job Form 9
% *************************************************

expName = 'fc9_calyA';
dirString = '../../../data/LSM710/2011/101411_motility/last60frames/fc9_calyA/'; % relative to home i.e. tcmat/tcmat_v1/src
numChannels = 1;
numFrames = 61;

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 1;
startimg_irm = 0;
startimg_memory = 0;
startimg_naive = 0;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 1;

% params for detection
imageScale = 1.5;
edgeValue = 0.1;
radiusMin = 5;
radiusMax = 15;
gradientThresh = 10;
searchRadius = 16;
minCellSeparation = 7;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 20;
numUmPerPix_convert = 0.664;
arrestCoefficientThreshold = 2.0;

% save only irm-attached cells (0 for all cells, 1 for irm-attached only)
wantIrmOnly = 0;

% remove paths shorter than a given threshold (set threshold to 0 to leave datacell untouched; otherwise, this removes all paths of length shorter than threshold)
removeShortPaths_threshold =  4;

% max tracking jump threshold
maxTrackingJump = 20;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel, wantIrmOnly, removeShortPaths_threshold, maxTrackingJump};
jobs{end+1} = nextJob; 
% *************************************************


% *************************************************
%                    Job Form 9
% *************************************************

expName = 'fc13_icam1';
dirString = '../../../data/LSM710/2011/101411_motility/last60frames/fc13_icam1/'; % relative to home i.e. tcmat/tcmat_v1/src
numChannels = 1;
numFrames = 61;

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 1;
startimg_irm = 0;
startimg_memory = 0;
startimg_naive = 0;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 1;

% params for detection
imageScale = 1.5;
edgeValue = 0.1;
radiusMin = 5;
radiusMax = 15;
gradientThresh = 10;
searchRadius = 16;
minCellSeparation = 7;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 20;
numUmPerPix_convert = 0.664;
arrestCoefficientThreshold = 2.0;

% save only irm-attached cells (0 for all cells, 1 for irm-attached only)
wantIrmOnly = 0;

% remove paths shorter than a given threshold (set threshold to 0 to leave datacell untouched; otherwise, this removes all paths of length shorter than threshold)
removeShortPaths_threshold =  4;

% max tracking jump threshold
maxTrackingJump = 20;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel, wantIrmOnly, removeShortPaths_threshold, maxTrackingJump};
jobs{end+1} = nextJob; 
% *************************************************


% *************************************************
%                    Job Form 9
% *************************************************

expName = 'fc4_PKCtMyr';
dirString = '../../../data/LSM710/2011/101411_motility/last60frames/fc4_PKCtMyr/'; % relative to home i.e. tcmat/tcmat_v1/src
numChannels = 1;
numFrames = 61;

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 1;
startimg_irm = 0;
startimg_memory = 0;
startimg_naive = 0;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 1;

% params for detection
imageScale = 1.5;
edgeValue = 0.1;
radiusMin = 5;
radiusMax = 15;
gradientThresh = 10;
searchRadius = 16;
minCellSeparation = 7;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 20;
numUmPerPix_convert = 0.664;
arrestCoefficientThreshold = 2.0;

% save only irm-attached cells (0 for all cells, 1 for irm-attached only)
wantIrmOnly = 0;

% remove paths shorter than a given threshold (set threshold to 0 to leave datacell untouched; otherwise, this removes all paths of length shorter than threshold)
removeShortPaths_threshold =  4;

% max tracking jump threshold
maxTrackingJump = 20;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel, wantIrmOnly, removeShortPaths_threshold, maxTrackingJump};
jobs{end+1} = nextJob; 
% *************************************************

% *************************************************
%                    Job Form 9
% *************************************************

expName = 'fc5_PKCaMyr';
dirString = '../../../data/LSM710/2011/101411_motility/last60frames/fc5_PKCaMyr/'; % relative to home i.e. tcmat/tcmat_v1/src
numChannels = 1;
numFrames = 61;

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 1;
startimg_irm = 0;
startimg_memory = 0;
startimg_naive = 0;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 1;

% params for detection
imageScale = 1.5;
edgeValue = 0.1;
radiusMin = 5;
radiusMax = 15;
gradientThresh = 10;
searchRadius = 16;
minCellSeparation = 7;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 20;
numUmPerPix_convert = 0.664;
arrestCoefficientThreshold = 2.0;

% save only irm-attached cells (0 for all cells, 1 for irm-attached only)
wantIrmOnly = 0;

% remove paths shorter than a given threshold (set threshold to 0 to leave datacell untouched; otherwise, this removes all paths of length shorter than threshold)
removeShortPaths_threshold =  4;

% max tracking jump threshold
maxTrackingJump = 20;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel, wantIrmOnly, removeShortPaths_threshold, maxTrackingJump};
jobs{end+1} = nextJob; 
% *************************************************