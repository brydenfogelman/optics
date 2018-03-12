<<<<<<< HEAD:02_lab/results/coherence.m
S = load('day3-data/zpl_span_3_speed_0_003_mar_5_414.mat');
data = S.data2;

K = 0.95;
span = 3;

=======
load('day3-data\zpl_span_3_speed_0_003_mar_5_414.mat')
data = data2;
>>>>>>> cf9235784b536f218ee9162c75a48398bf8aca12:coherence.m
data = data - mean(data); 
data = data/max(abs(data));



<<<<<<< HEAD:02_lab/results/coherence.m
% plot(data)
=======
[lambda, spec] = getSpectrum(data,0.95,3e-3);
figure
plot(lambda,spec)
figure
plot(data)
>>>>>>> cf9235784b536f218ee9162c75a48398bf8aca12:coherence.m
[upr_peakEnv,lwr_peakEnv] = envelope(data,200,'peak');
% figure
% plot(lwr_peakEnv)
% envelope(lwr_peakEnv,200,'peak')
[amp,idx] = findpeaks(-lwr_peakEnv);

x = idx / max(idx) * 2 * span * K;
y = amp;

xdata = linspace(0, 6*0.95, length(data));

<<<<<<< HEAD:02_lab/results/coherence.m
coherence_sodium_fit(x,y, xdata, data);
=======

%calculate fringe frequency
fringePeaks = findpeaks(data);
numPeaks = numel(fringePeaks);
span = 3e-3;
K = 0.95;
wavelength = 4*span*K/numPeaks;



%calculate beat frequency (wavelength diff)

d_lambda_expected = 589e-9^2/0.6e-9;
[amp,idx] = findpeaks(lwr_peakEnv);
L = numel(data);
d_x = 4*span*K/L;
d_lambda = d_x*(idx(23)-idx(4))/18;

%white light coherence length
load('day3-data\zpl_white_only_span_0_05_speed_0_001_start_pos_7_69_mar5_513.mat')
data = data_white1;
data = data - mean(data); 
data = data/max(abs(data));
[up_amp,up_idx] = findpeaks(data);
[lwr_amp,lwr_idx] = findpeaks(-data);
lwr_amp = -lwr_amp;

plot(up_idx,up_amp,lwr_idx,lwr_amp)

>>>>>>> cf9235784b536f218ee9162c75a48398bf8aca12:coherence.m
