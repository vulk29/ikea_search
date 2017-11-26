figure;
a1=load('shoot me/aggregated/main/lattice0k6.mat');
b2=load('shoot me/aggregated/main/full0k6.mat');
c3=load('shoot me/aggregated/main/full40k6.mat'); 
d4=load('shoot me/aggregated/main/lattice40k6.mat');
y2d=[a1.blu(1).maxcol(1:100); d4.blu(1).maxcol(1:100); b2.blu(1).maxcol(1:100); c3.blu(1).maxcol(1:100);]';
plot(1:100, a1.blu(1).maxcol, '-k')
hold on
plot(1:100, d4.blu(1).maxcol(1:100), '-.k')
plot(1:100, b2.blu(1).maxcol(1:100), '--r')
plot(1:100, c3.blu(1).maxcol(1:100), '-r')

legend('lattice non ikea', 'lattice ikea', 'full without ikea', 'full network with ikea')
title('Full network maximum peformance: "Ikea" vs "Non Ikea" agents')
xlabel({'Time'});
ylabel(('Standardized performance')); 

ah = gca; 
% location of the plot to be zoomed in. 
s_pos =[80 0.98 100 1];
% % location of the zoom-in plot 
t_pos = [76 0.86 96 0.92];
%rectangle('Parent',axes2,'Position',[80 0.98 20 0.02]);

 zoomPlot(ah, s_pos, t_pos);

