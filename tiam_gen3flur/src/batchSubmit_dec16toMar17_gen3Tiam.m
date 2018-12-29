function batchSubmit_dec16toMar17_gen3Tiam()

% set up batch jobs in this file (this calls tcmatBatchScript.m at the end)
addpath(genpath('C:/Users/vmayya/Documents/MATLAB/tiam_gen3flur/src'));

% jobs is constructed and passed as a parameter to tcmatBatchScript.m
jobs = {};



% *************************************************
%                    Job Form
% *************************************************

expName = '122016_2o_058_long';
dirString = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2016/122016_058_longTrial/anals/2o_058_long/'; % relative to home i.e. tcmat/tcmat_v1/src
numChannels = 2;
numFrames = 370; %

% assign numbers 1-4 for each of the below. if channel does not exist, write 0 (there must be a non-zero for startimg_dic).
startimg_dic = 2;
startimg_irm = 1;
startimg_memory = 0;
startimg_naive = 0;

% assign one of the non-zero channels above from which to extract outline information. if no outline information is desired, write 0.
outline_channel = 0;

% params for detection
imageScale = 2.1;
edgeValue = 0.10;
radiusMin = 5;
radiusMax = 13;
gradientThresh = 10;
searchRadius = 15;
minCellSeparation = 5;
darkImage = 0; % 0 or 1
params = [imageScale, edgeValue, radiusMin, radiusMax, gradientThresh, searchRadius, minCellSeparation, darkImage];

% conversion and other specifications
numSecondsBetweenFrames_convert = 30.0;
numUmPerPix_convert = 0.828;
arrestCoefficientThreshold = 1;

% save only irm-attached cells (0 for all cells, 1 for irm-attached only)
wantIrmOnly = 0;

% remove paths shorter than a given threshold (set threshold to 0 to leave datacell untouched; otherwise, this removes all paths of length shorter than threshold)
removeShortPaths_threshold = 5;

% max tracking jump threshold
maxTrackingJump = 15; % 

spotImg = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2016/122016_058_longTrial/anals/spot_2o_058_long.tif';

nextJob = {expName, dirString, numChannels, numFrames, startimg_dic, startimg_irm, startimg_memory, startimg_naive, params, numSecondsBetweenFrames_convert, numUmPerPix_convert, arrestCoefficientThreshold, outline_channel, wantIrmOnly, removeShortPaths_threshold, maxTrackingJump, spotImg};
jobs{end+1} = nextJob; 
% *************************************************

nextJob{1} = '122416_3o_060_long';
nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2016/122416_060_longTrial/anals/3o_060_long/';
nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2016/122416_060_longTrial/anals/spot_3o_060_long.tif';
nextJob{4} = 480; %numFrames
nextJob{10} = 30.0; %numSeconds
jobs{end+1} = nextJob;

nextJob{1} = '122416_4o_060_long';
nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2016/122416_060_longTrial/anals/4o_060_long/';
nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2016/122416_060_longTrial/anals/spot_4o_060_long.tif';
nextJob{4} = 480; %numFrames
nextJob{10} = 30.0; %numSeconds
jobs{end+1} = nextJob;

nextJob{1} = '021417_1o_067_long';
nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/021417_067_okt3DoseLong/anals/1o_067_long/';
nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/021417_067_okt3DoseLong/anals/spot_1o_067_long.tif';
nextJob{4} = 480; %numFrames
nextJob{10} = 30.0; %numSeconds
jobs{end+1} = nextJob;

%nextJob{1} = '102816_4o_4e6_long';
%nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2016/102816_050_longTimeLapse/anals/4o_4e6_long/';
%nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2016/102816_050_longTimeLapse/anals/spot_4o_4e6_long.tif';
%nextJob{4} = 447; %numFrames
%nextJob{9} = [2.1, 0.1, 5, 13, 10, 15, 5, 0]; %detectParams
%nextJob{10} = 29.95; %numSeconds
%jobs{end+1} = nextJob;

nextJob{1} = '021417_2o_067_long';
nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/021417_067_okt3DoseLong/anals/2o_067_long/';
nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/021417_067_okt3DoseLong/anals/spot_2o_067_long.tif';
nextJob{4} = 480; %numFrames
nextJob{10} = 30.0; %numSeconds
jobs{end+1} = nextJob;

nextJob{1} = '030417_1o_068_long';
nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/1o_068_long/';
nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/spot_1o_068_long.tif';
nextJob{4} = 480; %numFrames
nextJob{10} = 30.0; %numSeconds
jobs{end+1} = nextJob;

nextJob{1} = '030417_2o_068_long';
nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/2o_068_long/';
nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/spot_2o_068_long.tif';
nextJob{4} = 480; %numFrames
nextJob{10} = 30.0; %numSeconds
jobs{end+1} = nextJob;

nextJob{1} = '030417_4o_068_long';
nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/4o_068_long/';
nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/spot_4o_068_long.tif';
nextJob{4} = 380; %numFrames
nextJob{10} = 30.0; %numSeconds
jobs{end+1} = nextJob;

nextJob{1} = '030417_1o_069_long';
nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/1o_069_long/';
nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/spot_1o_069_long.tif';
nextJob{4} = 480; %numFrames
nextJob{10} = 30.0; %numSeconds
jobs{end+1} = nextJob;

nextJob{1} = '030417_2o_069_long';
nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/2o_069_long/';
nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/spot_2o_069_long.tif';
nextJob{4} = 440; %numFrames
nextJob{10} = 30.0; %numSeconds
jobs{end+1} = nextJob;

nextJob{1} = '030417_4o_069_long';
nextJob{2} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/4o_069_long/';
nextJob{17} = 'C:/Users/vmayya/Documents/dataOx/IX83_FV1200/2017/030417_okt3DoseLong/anals/spot_4o_069_long.tif';
nextJob{4} = 380; %numFrames
nextJob{10} = 30.0; %numSeconds
jobs{end+1} = nextJob;

% call tcmatBatchScript.m
tcmatBatchScript(jobs);
