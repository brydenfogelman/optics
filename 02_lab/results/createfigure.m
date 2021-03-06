function createfigure(X1, Y1, X2, YMatrix1)
%CREATEFIGURE(X1, Y1, X2, YMATRIX1)
%  X1:  vector of x data
%  Y1:  vector of y data
%  X2:  vector of x data
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 11-Mar-2018 16:23:39

% Create figure
figure1 = figure('Name','Coherence Length');

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(X1,Y1,'DisplayName','Envelope Peaks','MarkerSize',8,'Marker','x',...
    'LineStyle','none',...
    'Color',[0 0 1]);

% Create multiple lines using matrix input to plot
plot1 = plot(X2,YMatrix1,'LineWidth',2,'Color',[1 0 0],'Parent',axes1,...
    'LineStyle',':');
set(plot1(1),'DisplayName','Coherence Length','LineStyle','-');
set(plot1(2),'DisplayName','Lower bounds');
set(plot1(3),'DisplayName','Upper bounds');

title('Fit to Determine Coherence Length');

% Create xlabel
xlabel('x (mm)');

% Create ylabel
ylabel('y (arb. units');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 3]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0.1 1.1]);
box(axes1,'on');
grid(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontSize',16);
% Create legend
legend(axes1,'show');

