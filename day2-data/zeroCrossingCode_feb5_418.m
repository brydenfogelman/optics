
%find zero crossings
zc = data > mean(data) & circshift(data,1)<mean(data) | data < mean(data)...
    & circshift(data,1)>mean(data);
 figure
 plot(data(1:50)/max(data),'kx-');
 hold on;
 plot(zc(1:50)*mean(data)/max(data),'o')
 lambda = 632.8e-9;
 D = 0.2e-3;
 K = lambda*sum(zc)/2/2/D;