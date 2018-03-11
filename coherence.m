load('day3-data\zpl_span_3_speed_0_003_mar_5_414.mat')

data = data - mean(data); 
data = data/max(abs(data));


L = length(data); 
NFFT = 2^nextpow2(L);
fftdata = abs(fftshift(fft(data,NFFT)));
fftdata_oneside = fftdata(NFFT/2+2:NFFT);
fftdata_oneside = fftdata_oneside/max(fftdata_oneside);

plot(data)
[upr_peakEnv,lwr_peakEnv] = envelope(data,200,'peak');
figure
plot(lwr_peakEnv)
envelope(lwr_peakEnv,200,'peak')
[amp,idx] = findpeaks(-lwr_peakEnv);


