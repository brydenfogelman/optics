function [lambda, spec] = getSpectrum(data,K,span);
data = data - mean(data);
data = data/max(data);

L = length(data); 
NFFT = 2^nextpow2(L);
fftdata = abs(fftshift(fft(data,NFFT)));
fftdata_oneside = fftdata(NFFT/2+2:NFFT);
fftdata_oneside = fftdata_oneside/max(fftdata_oneside);

spec = fftdata_oneside;


delta_x = 2*span*K/L;
n=1:NFFT/2-1;
lambda=NFFT*delta_x./n;


end