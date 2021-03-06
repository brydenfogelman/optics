day3_data = dir('day3-data\*.mat');
%load([day3_data(i).folder '\' day3_data(i).name])
load([day3_data(1).folder '\zpl_white_only_span_0_05_speed_0_001_start_pos_7_69_mar5_513']);
span = 0.05e-3;
K = 0.95; %calibration constant



[lambda, spec]  = getSpectrum(data_white1,K,span);

figure
plot(lambda, spec)
xlim([200e-9 1200e-9])

load([day3_data(1).folder '\zpl_white_only_span_0_03_speed_0_0001_start_pos_7_6935_mar5_530']);
span = 0.03e-3;
[lambda, spec]  = getSpectrum(data_white1,K,span);

figure
plot(lambda, spec)
xlim([200e-9 1200e-9])


load([day3_data(1).folder '\zpl_white_only_span_0_01_speed_0_0005_start_pos_7_6925_mar5_517']);
span = 0.01e-3;
[lambda, spec]  = getSpectrum(data_white1,K,span);

figure
plot((lambda), spec)
xlim([200e-9 1200e-9])

load([day3_data(1).folder '\zpl_white_orange_span_0_1_speed_0_001_mar5_447']);
span = 0.1e-3;
[lambda, spec]  = getSpectrum(data4,K,span);

figure
plot((lambda), spec)
xlim([200e-9 1200e-9])



load([day3_data(1).folder '\zpl_span_3_speed_0_003_mar_5_414.mat']);
span = 3e-3;
[lambda, spec]  = getSpectrum(data2,K,span);

figure
plot((lambda), spec)
xlim([200e-9 1200e-9])