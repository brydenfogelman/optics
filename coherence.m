load('day3-data\zpl_span_3_speed_0_003_mar_5_414.mat')
data = data2;
data = data - mean(data); 
data = data/max(abs(data));



[lambda, spec] = getSpectrum(data,0.95,3e-3);
figure
plot(lambda,spec)
figure
plot(data)
[upr_peakEnv,lwr_peakEnv] = envelope(data,200,'peak');
figure
plot(lwr_peakEnv)
envelope(lwr_peakEnv,200,'peak')
[amp,idx] = findpeaks(-lwr_peakEnv);



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
d_lambda = d_x*(max(idx)-min(idx))/numel(idx);

