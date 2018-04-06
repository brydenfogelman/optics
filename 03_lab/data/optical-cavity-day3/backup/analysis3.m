load('finesseData.mat')

figure
errorbar(L,finesse,delta_fin,'k.')
title({'Finesse wrt Cavity Length'},'Interpreter','latex');
xlabel('$L_{cav}$ (cm)','Interpreter','latex');
ylabel('$\mathcal{F}$','Interpreter','latex');

FSR = 3e8/2./(L*1e-2);
linewidths = FSR./finesse;
delta_linewidths = FSR./(finesse.^2).*delta_fin;

figure
errorbar(L,linewidths/1e6,delta_linewidths/1e6,'k.')
title({'Linewidth wrt Cavity Length'},'Interpreter','latex');
xlabel('$L_{cav}$ (cm)','Interpreter','latex');
ylabel('Linewidth (MHz)','Interpreter','latex');