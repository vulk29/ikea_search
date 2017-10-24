figure;
a1=load('100/aggregated/64_forplots100.mat');
b2=load('100/aggregated/nonfullplots.mat');
c3=load('100/aggregated/ikeafullplots100.mat'); 
%d4=load('100/aggregated/10ikeafullplots100');
y2d=[a1.blu(3).maxcol(1:100); a1.blu(5).maxcol(1:100); b2.blufl(1).maxcol(1:100); c3.blufl(1).maxcol(1:100);]';
plot(1:100, y2d)

legend('lattice non ikea', 'lattice ikea', 'full without ikea', 'full network with ikea')
title('Full network max peformance')

ah = gca; 
% location of the plot to be zoomed in. 
s_pos =[80 0.98 100 1];
% % location of the zoom-in plot 
t_pos = [68 0.92 98 0.96];
%rectangle('Parent',axes2,'Position',[80 0.98 20 0.02]);

zoomPlot(ah, s_pos, t_pos);

