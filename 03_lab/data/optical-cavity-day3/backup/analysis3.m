load('finesseData.mat')

expF  =85.64;
figure
errorbar(L,finesse,delta_fin,'k.')
hold on;
plot([0 30],expF*[1 1],'r--')
title({'Finesse wrt Cavity Length'},'Interpreter','latex');
xlabel('$L_{cav}$ (cm)','Interpreter','latex');
ylabel('$\mathcal{F}$','Interpreter','latex');

FSR = 3e8/2./(L*1e-2);
linewidths = FSR./finesse;
delta_linewidths = FSR./(finesse.^2).*delta_fin;
x = linspace(2,30,100);
expL = 3e8/2./(x*1e-2)/expF;
figure
errorbar(L,linewidths/1e6,delta_linewidths/1e6,'k.')
hold on;
plot(x,expL/1e6,'r--')

title({'Linewidth wrt Cavity Length'},'Interpreter','latex');
xlabel('$L_{cav}$ (cm)','Interpreter','latex');
ylabel('Linewidth (MHz)','Interpreter','latex');

q = L*1e-2/lambda_2;
Q = q.*finesse;
dQ = q.*delta_fin;
expQ = x*1e-2/lambda_2*expF;
figure
errorbar(L,Q,dQ,'k.')
hold on
plot(x,expQ,'r--')
title({'Quality wrt Cavity Length'},'Interpreter','latex');
xlabel('$L_{cav}$ (cm)','Interpreter','latex');
ylabel('Linewidth (MHz)','Interpreter','latex');
