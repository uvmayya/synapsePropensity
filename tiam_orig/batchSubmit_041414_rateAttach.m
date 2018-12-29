function batchSubmit_041414_rateAttach()

% set up batch jobs in this file (this calls tcmatBatchScript.m at the end)
addpath(genpath('C:/Users/vmayya/Documents/MATLAB/tiam_AttachmentRate/src'));

% jobs is constructed and passed as a parameter to tcmatBatchScript.m
jobs = {};



% *************************************************
%                    Job Form
% *************************************************

expName = '041414_nve_attKin';
dirString = 'C:/Users/vmayya/Documents/dataSki/LSM510/041414_nveMem_10um/anals/nve_allCh/'; % relative to home i.e. tcmat/tcmat_v1/src

numChannels = 3;
numFrames = 480; % 480

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 3;
startimg_irm = 1;
startimg_memory = 2;
startimg_naive = 0;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 3; % gave error message for imwrite (in get_outlineNew.m) on the field2_2 file

% params for detection
imageScale = 1.1;
edgeValue = 0.1;
radiusMin = 5;
radiusMax = 15;
gradientThresh = 10;
searchRadius = 15;
minCellSeparation = 6;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 28.94;
numUmPerPix_convert = 0.439;
arrestCoefficientThreshold = 1;

% save only irm-attached cells (0 for all cells, 1 for irm-attached only)
wantIrmOnly = 0;

% remove paths shorter than a given threshold (set threshold to 0 to leave datacell untouched; otherwise, this removes all paths of length shorter than threshold)
removeShortPaths_threshold = 0;

% max tracking jump threshold
maxTrackingJump = 28;

% flur threshold to conclude that the cell is on the spot
flurThreshold = 24; % This is based ~20% overlap with the spot: (0.8*10)+(0.2*80)

% halfCropSize for doing feature extraction and outlining
halfCropSize = 22; 

% step-size for time-averaging of vectors
stepSize = 20;

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel, wantIrmOnly, removeShortPaths_threshold, maxTrackingJump, flurThreshold, halfCropSize, stepSize};
jobs{end+1} = nextJob; 
% *************************************************

nextJob{1} = '041414_mem_attKin';
nextJob{2} = 'C:/Users/vmayya/Documents/dataSki/LSM510/041414_nveMem_10um/anals/mem_allCh/';
nextJob{4} = 100;
nextJob{9} = [1.1, 0.05, 4, 16, 10, 14, 6, 1]; %dark image condition used for memory
% [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];
nextJob{18} = 24; % the memory cells are really spread out hence giving a slightly larger halfCropSize
nextJob{19} = 10; % stepSize
jobs{end+1} = nextJob;

%nextJob{1} = '011914_field1_4';
%nextJob{2} = 'C:/Users/vmayya/Documents/dataSki/LSM710/011914_rateOfAttach/anals/field1_4/';
%jobs{end+1} = nextJob;



% call tcmatBatchScript.m
tcmatBatchScript(jobs);
