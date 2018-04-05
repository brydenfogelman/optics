data = dir('*.csv');
close all
for i = 1:numel(data)
    filename = [data(i).folder '\' data(i).name];
    [t,pd,piezo] = importfile(filename);    
    pd = pd - min(pd);  %zero minimum
    pd = pd/max(pd);    %normalize
    figure
    plot(t,pd)
    [FWHM, idx] = fwhm(t,pd);
    text(t(idx),0.5,num2str(FWHM))
    title(data(i).name, 'Interpreter', 'none');
end