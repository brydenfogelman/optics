start_pos = 8e-3;
K = 0.95;
peakIdx = 3.27e4;
numPts = 59909;
span = 3e-3;

ZPL = start_pos + 2*K*span*(peakIdx/numPts - .5);
uncert = ZPL*.07
ZPL*1000