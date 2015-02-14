function opt = globals()

opt.mot = '/home/yuxiang/Projects/Multitarget_Tracking/MOTbenchmark';
opt.mot2d = '2DMOT2015';
opt.results = 'results';

opt.mot2d_train_seqs = {'TUD-Stadtmitte', 'TUD-Campus', 'PETS09-S2L1', ...
    'ETH-Bahnhof', 'ETH-Sunnyday', 'ETH-Pedcross2', 'ADL-Rundle-6', ...
    'ADL-Rundle-8', 'KITTI-13', 'KITTI-17', 'Venice-2'};
opt.mot2d_train_nums = [179, 71, 795, 1000, 354, 840, 525, 654, 340, 145, 600];

opt.mot2d_test_seqs = {'TUD-Crossing', 'PETS09-S2L2', 'ETH-Jelmoli', ...
    'ETH-Linthescher', 'ETH-Crossing', 'AVG-TownCentre', 'ADL-Rundle-1', ...
    'ADL-Rundle-3', 'KITTI-16', 'KITTI-19', 'Venice-1'};
opt.mot2d_test_nums = [201, 436, 440, 1194, 219, 450, 500, 625, 209, 1059, 450];

% tracking parameters
opt.lost = 50;
opt.lost_online = 2;
opt.tracked = 4;
opt.min_err_threshold = 2;
opt.exit_threshold = 0.7;
opt.det_threshold = 10;
opt.det_confident = 50;
opt.det_normalization = 100;

% parameters in building graph for network flow
opt.ratio_threshold = 0.7;
opt.dis_threshold = 50;

addpath(genpath('3rd_party/cs2'));
addpath(fullfile(opt.mot, 'devkit', 'utils'));
addpath(genpath('3rd_party/L1APG'));