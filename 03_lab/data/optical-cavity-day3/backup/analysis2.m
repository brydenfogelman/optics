clear
close all
data = dir('*.csv');
i= 2;
j = 1;
L(j) = 23;
filename = [data(i).folder '\' data(i).name];
[t,pd,piezo] = importfile(filename);
pd = pd - min(pd);  %zero minimum
pd = pd/max(pd);    %normalize

figure
plot(pd)
findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');
[pks,locs,widths,proms] =findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');

hold on
plot(piezo)
title(data(i).name, 'Interpreter', 'none');
pkSpacing = (locs(3)-locs(1))/2;
lambda_2 = 632.9e-9/2;
timespan = t(end)-t(1);%so we can reuse calibration over different timescales
calibration = lambda_2/pkSpacing/timespan;

x = (1:2500)*calibration*timespan;

figure
plot(x,pd)
findpeaks(pd,x,'MinPeakProminence',0.5,'Annotate','extents');
hold on
plot(x,piezo)
FWHM(j) = mean(widths)*calibration*timespan;

finesse(j) = lambda_2/FWHM(j);
delta_fwhm = std(widths)*calibration*timespan;
delta_fin(j) = finesse(j) -  lambda_2/(FWHM(j)-delta_fwhm);

% 
% %%  
% i= 3;
% filename = [data(i).folder '\' data(i).name];
% [t,pd,piezo] = importfile(filename);
% pd = pd - min(pd);  %zero minimum
% pd = pd/max(pd);    %normalize
% 
% figure
% plot(pd)
% findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');
% clear pks locs widths proms 
% [pks,locs,widths,proms] =findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');
% 
% hold on
% plot(piezo)
% title(data(i).name, 'Interpreter', 'none');
% 
% timespan = t(end)-t(1);
% 
% 
% FWHM(i) = sum(widths)*calibration*timespan;
% 
% finesse(i) = FSR/FWHM(i);


%%
i=9;
j = j+1;
L(j) = 14;
filename = [data(i).folder '\' data(i).name];
[t,pd,piezo] = importfile(filename);
pd = pd - min(pd);  %zero minimum
pd = pd/max(pd);    %normalize

figure
plot(pd)
findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');
[pks,locs,widths,proms] = findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');

hold on
plot(piezo)
title(data(i).name, 'Interpreter', 'none');
pkSpacing = (locs(3)-locs(1))/2;
lambda_2 = 632.9e-9/2;
timespan = t(end)-t(1);%so we can reuse calibration over different timescales
calibration = lambda_2/pkSpacing/timespan;

x = (1:2500)*calibration*timespan;
figure
plot(x,pd)
findpeaks(pd,x,'MinPeakProminence',0.5,'Annotate','extents');
hold on
plot(x,piezo)

FWHM(j) = mean(widths)*calibration*timespan;

finesse(j) = lambda_2/FWHM(j);
delta_fwhm = std(widths)*calibration*timespan;
delta_fin(j) = finesse(j) -  lambda_2/(FWHM(j)-delta_fwhm);


%%
i=10;
j = j+1;
L(j) = 28;
filename = [data(i).folder '\' data(i).name];
[t,pd,piezo] = importfile(filename);
pd = pd - min(pd);  %zero minimum
pd = pd/max(pd);    %normalize

figure
plot(pd)
findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');
[pks,locs,widths,proms] = findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');

hold on
plot(piezo)
title(data(i).name, 'Interpreter', 'none');
pkSpacing = (locs(3)-locs(2));
lambda_2 = 632.9e-9/2;
timespan = t(end)-t(1);%so we can reuse calibration over different timescales
calibration = lambda_2/pkSpacing/timespan;

x = (1:2500)*calibration*timespan;
figure1 = figure
plot(x,pd)
findpeaks(pd,x,'MinPeakProminence',0.5,'Annotate','extents');
hold on
plot(x,piezo)
% Create xlabel
xlabel({'Mirror Displacement (m)'},'Interpreter','latex');

% Create title
title({'Photodiode Signal ($L_{cav} = 28$cm)'},'Interpreter','latex');
% Create textbox
annotation(figure1,'textbox',...
    [0.3 0.7 0.03 0.03],...
    'String',{'$\lambda/2$'},...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create doublearrow
annotation(figure1,'doublearrow',[0.25 0.49],...
    [0.7 0.71]);
FWHM(j) = mean(widths)*calibration*timespan;

finesse(j) = lambda_2/FWHM(j);
delta_fwhm = std(widths)*calibration*timespan;
delta_fin(j) = finesse(j) -  lambda_2/(FWHM(j)-delta_fwhm);


%%
i=12;
j = j+1;
L(j) = 3;
filename = [data(i).folder '\' data(i).name];
[t,pd,piezo] = importfile(filename);
pd = pd - min(pd);  %zero minimum
pd = pd/max(pd);    %normalize

figure
plot(pd)
findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');
[pks,locs,widths,proms] = findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');

hold on
plot(piezo)
title(data(i).name, 'Interpreter', 'none');
pkSpacing = (locs(3)-locs(2));
lambda_2 = 632.9e-9/2;
timespan = t(end)-t(1);%so we can reuse calibration over different timescales
calibration = lambda_2/pkSpacing/timespan;

x = (1:2500)*calibration*timespan;
figure1 = figure
plot(x,pd)
findpeaks(pd,x,'MinPeakProminence',0.5,'Annotate','extents');
hold on
plot(x,piezo)
% Create xlabel
xlabel({'Mirror Displacement (m)'},'Interpreter','latex');

% Create title
title({'Photodiode Signal ($L_{cav} = 3$cm)'},'Interpreter','latex');
% Create textbox
annotation(figure1,'textbox',...
    [0.3 0.7 0.03 0.03],...
    'String',{'$\lambda/2$'},...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create doublearrow
annotation(figure1,'doublearrow',[0.25 0.49],...
    [0.7 0.71]);
FWHM(j) = mean(widths)*calibration*timespan;

finesse(j) = lambda_2/FWHM(j);
delta_fwhm = std(widths)*calibration*timespan;
delta_fin(j) = finesse(j) -  lambda_2/(FWHM(j)-delta_fwhm);


% %%
% i=14;
% j = j+1;
% L(j) = 
% filename = [data(i).folder '\' data(i).name];
% [t,pd,piezo] = importfile(filename);
% pd = pd - min(pd);  %zero minimum
% pd = pd/max(pd);    %normalize
% 
% figure
% plot(pd)
% findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');
% [pks,locs,widths,proms] = findpeaks(pd,'MinPeakProminence',0.5,'Annotate','extents');
% 
% hold on
% plot(piezo)
% title(data(i).name, 'Interpreter', 'none');
% pkSpacing = (locs(3)-locs(2));
% FSR = 632.9e-9/2;
% timespan = t(end)-t(1);%so we can reuse calibration over different timescales
% calibration = FSR/pkSpacing/timespan;
% 
% x = (1:2500)*calibration*timespan;
% figure1 = figure
% plot(x,pd)
% findpeaks(pd,x,'MinPeakProminence',0.5,'Annotate','extents');
% hold on
% plot(x,piezo)
% % Create xlabel
% xlabel({'Mirror Displacement (m)'},'Interpreter','latex');
% 
% % Create title
% title({'Photodiode Signal ($L_{cav} = 3$cm)'},'Interpreter','latex');
% % Create textbox
% annotation(figure1,'textbox',...
%     [0.3 0.7 0.03 0.03],...
%     'String',{'$\lambda/2$'},...
%     'LineStyle','none',...
%     'Interpreter','latex',...
%     'FontSize',16,...
%     'FitBoxToText','off');
% 
% % Create doublearrow
% annotation(figure1,'doublearrow',[0.25 0.49],...
%     [0.7 0.71]);
% FWHM(j) = mean(widths)*calibration*timespan;
% 
% finesse(j) = FSR/FWHM(j);
% delta_fwhm = std(widths)*calibration*timespan;
% delta_fin(j) = finesse(j) -  FSR/(FWHM(j)-delta_fwhm);



%%














