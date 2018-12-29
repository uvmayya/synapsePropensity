function batchSubmit_041414_rateAttachMasked()

% set up batch jobs in this file (this calls tcmatBatchScript.m at the end)
addpath(genpath('C:/Users/vmayya/Documents/MATLAB/tiam_AttachmentRate/src'));

% jobs is constructed and passed as a parameter to tcmatBatchScript.m
jobs = {};



% *************************************************
%                    Job Form
% *************************************************

expName = '041414_nve_attKin';
dirString = 'C:/Users/vmayya/Documents/dataSki/LSM510/041414_nveMem_10um/anals/nve_13minOn/'; % relative to home i.e. tcmat/tcmat_v1/src

numChannels = 1;
numFrames = 480; % 

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 1;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 0; % gave error message for imwrite (in get_outlineNew.m) on the field2_2 file

% params for detection
imageScale = 1.1; 
edgeValue = 0.1; % 0.05 on previous attempt
radiusMin = 3; % 4 on previous attempt
radiusMax = 12; % 14 on previous attempt
gradientThresh = 10;
searchRadius = 14; %13 in ver1 results
minCellSeparation = 5;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 28.94;
numUmPerPix_convert = 0.439;

% max tracking jump threshold
maxTrackingJump = 12; %10

% halfCropSize for doing feature extraction and outlining
halfCropSize = 22; 

% step-size for time-averaging of vectors
stepSize = 20;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, outline_channel, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, maxTrackingJump, halfCropSize, stepSize};
jobs{end+1} = nextJob; 
% *************************************************

nextJob{1} = '041414_mem_attKin';
nextJob{2} = 'C:/Users/vmayya/Documents/dataSki/LSM510/041414_nveMem_10um/anals/mem_4minOn/';
nextJob{4} = 100;
nextJob{7} = [1.1, 0.03, 4, 14, 10, 14, 5, 1]; % previous attempt was [1.1, 0.05, 3, 15, 10, 15, 5, 0];
% [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];
nextJob{12} = 10; % stepSize
jobs{end+1} = nextJob;


%nextJob{1} = '011914_field1_4';
%nextJob{2} = 'C:/Users/vmayya/Documents/dataSki/LSM710/011914_rateOfAttach/anals/field1_4/';
%jobs{end+1} = nextJob;



% call tcmatBatchScript.m
tcmatBatchScript_forMaskedCells(jobs);
