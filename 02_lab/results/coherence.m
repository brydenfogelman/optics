S = load('day3-data/zpl_span_3_speed_0_003_mar_5_414.mat');
data = S.data2;

K = 0.95;
span = 3;

data = data - mean(data); 
data = data/max(abs(data));


L = length(data); 
NFFT = 2^nextpow2(L);
fftdata = abs(fftshift(fft(data,NFFT)));
fftdata_oneside = fftdata(NFFT/2+2:NFFT);
fftdata_oneside = fftdata_oneside/max(fftdata_oneside);

% plot(data)
[upr_peakEnv,lwr_peakEnv] = envelope(data,200,'peak');
% figure
% plot(lwr_peakEnv)
% envelope(lwr_peakEnv,200,'peak')
[amp,idx] = findpeaks(-lwr_peakEnv);

x = idx / max(idx) * 2 * span * K;
y = amp;

xdata = linspace(0, 6*0.95, length(data));

coherence_sodium_fit(x,y, xdata, data);