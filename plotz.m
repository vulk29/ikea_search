f = figure;
p = uipanel('Parent',f,'BorderType','none'); 
p.Title = 'Confirming Lazer k6'; 
p.TitlePosition = 'centertop'; 
p.FontSize = 12;
p.FontWeight = 'bold';

subplot(2,2,1,'Parent',p) 
load('1000k64forplotsforsight0.mat')
lattice=load('1000k643forplotssight0.mat');
y2d=[a2(10).maxcol; a2(14).maxcol; a2(3).maxcol; a2(7).maxcol;]'; 
plot(1:25, a2(10).maxcol, '-.')
hold on
plot(1:25, lattice.blu(2).maxcol, '-.r*')
plot(1:25, a2(3).maxcol, '--mo')
plot(1:25, lattice.blu(1).maxcol, ':bs')

legend('ikea with random', 'ikea with lattice', 'nonikea with random', 'nonikea with lattice')
title('"Inefficient network" Maximum peformance')
xlabel({'Time'});
ylabel(('Standardized performance')); 

subplot(2,2,2,'Parent',p) 
load('1000k64forplotsforsight0.mat')
lattice=load('1000k643forplotssight0.mat');
y2d=[a2(10).avg; a2(14).avg; a2(3).avg; a2(7).avg;]'; 
plot(1:25, a2(10).avg, '-.')
hold on
plot(1:25, lattice.blu(2).avg, '-.r*')
plot(1:25, a2(3).avg, '--mo')
plot(1:25, lattice.blu(1).avg, ':bs')
legend('ikea with random', 'ikea with lattice', 'nonikea with random', 'nonikea with lattice')
title ('Average performance')
xlabel({'Time'});
ylabel(('Standardized performance')); 

subplot(2,2,3,'Parent',p) 
load('1000k63forplotsforsight0.mat')
y2d=[a2(7).maxcol; a2(3).maxcol]';
plot(1:25, y2d)
legend('ikea', 'nonikea')
title('Full network maximum peformance')
xlabel({'Time'});
ylabel(('Standardized performance')); 

subplot(2,2,4,'Parent',p) 
load('1000k63forplotsforsight0.mat')
y2d=[a2(7).maxcol; a2(3).maxcol]';
plot(1:25, y2d)
legend('ikea', 'nonikea')
title('Full network: average peformance')
xlabel({'Time'});
ylabel(('Standardized performance')); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


f = figure;
p = uipanel('Parent',f,'BorderType','none'); 
p.Title = 'The Ikea effect, k6'; 
p.TitlePosition = 'centertop'; 
p.FontSize = 12;
p.FontWeight = 'bold';

subplot(1,2,1,'Parent',p) 
a1=load('1000k63forplotsforsight0.mat');
b2=load('1000k64forplotsforsight0.mat');
lattice=load('1000k643forplotssight0.mat');
y2d=[lattice.blu(1).maxcol; b2.a2(3).maxcol; a1.a2(7).maxcol]';
plot(1:25, y2d)
legend('lattice non ikea', 'full network without ikea', 'full network with ikea')
title('Full network max peformance')

subplot(1,2,2,'Parent',p) 
a1=load('1000k63forplotsforsight0.mat');
b2=load('1000k64forplotsforsight0.mat');
lattice=load('1000k643forplotssight0.mat');
y2d=[lattice.blu(1).avg; b2.a2(3).maxcol; a1.a2(7).avg]';
plot(1:25, y2d)
legend('lattice non ikea', 'full network without ikea', 'full network with ikea')
title('Full average peformance')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = figure;
p = uipanel('Parent',f,'BorderType','none'); 
p.Title = '"Inefficient" networks outperform fully connected, k0'; 
p.TitlePosition = 'centertop'; 
p.FontSize = 12;
p.FontWeight = 'bold';

subplot(2,2,1,'Parent',p) 
load('1000k04forplotsforsight0.mat')
lattice=load('1000k043forplotssight0.mat');
y2d=[a2(10).maxcol; lattice.blu(2).maxcol; a2(3).maxcol; lattice.blu(1).maxcol;]'; 
plot(1:25, y2d)
legend('ikea with random', 'ikea with lattice', 'nonikea with random', 'nonikea with lattice')
title('Maximum peformance')

subplot(2,2,2,'Parent',p) 
load('1000k04forplotsforsight0.mat')
lattice=load('1000k043forplotssight0.mat');
y2d=[a2(10).avg; lattice.blu(2).avg; a2(3).avg; lattice.blu(1).avg;]'; 
plot(1:25, y2d)
legend('ikea with random', 'ikea with lattice', 'nonikea with random', 'nonikea with lattice')
title ('Average performance')

subplot(2,2,3,'Parent',p) 
load('1000k03forplotsforsight0.mat')
y2d=[a2(7).maxcol; a2(3).maxcol]';
plot(1:25, y2d)
legend('ikea', 'nonikea')
title('Full network maximum peformance')

subplot(2,2,4,'Parent',p) 
load('1000k03forplotsforsight0.mat')
y2d=[a2(7).avg; a2(3).avg]';
plot(1:25, y2d)
legend('ikea', 'nonikea')
title('Full network average peformance')

f = figure;
p = uipanel('Parent',f,'BorderType','none'); 
p.Title = 'The Ikea effect, k0'; 
p.TitlePosition = 'centertop'; 
p.FontSize = 12;
p.FontWeight = 'bold';

subplot(1,2,1,'Parent',p) 
a1=load('1000k03forplotsforsight0.mat');
b2=load('1000k04forplotsforsight0.mat');
lattice=load('1000k043forplotssight0.mat');
y2d=[lattice.blu(1).maxcol; b2.a2(3).maxcol; a1.a2(7).maxcol]';
plot(1:25, y2d)
legend('lattice non ikea', 'full network without ikea', 'full network with ikea')
title('Full network max peformance')

subplot(1,2,2,'Parent',p) 
a1=load('1000k03forplotsforsight0.mat');
b2=load('1000k04forplotsforsight0.mat');
lattice=load('1000k043forplotssight0.mat');
y2d=[lattice.blu(1).maxcol; b2.a2(3).maxcol; a1.a2(7).avg]';
plot(1:25, y2d)
legend('lattice non ikea', 'full network without ikea', 'full network with ikea')
title('Full network average peformance')

f = figure;
p = uipanel('Parent',f,'BorderType','none'); 
p.Title = 'The effect of Ikea effect'; 
p.TitlePosition = 'centertop'; 
p.FontSize = 12;
p.FontWeight = 'bold';

subplot(1,2,1,'Parent',p) 
a1=load('ikeavaries1000k63forplots');
brush(1)=0.9074;
for i=2:11
brush(i)=a1.a2(i-1).maxcol(25); 
end
plot(0:10:100, brush)
title('Full network max peformance k6')
ylim([0.9 1.01])


subplot(1,2,2,'Parent',p) 
a1=load('ikeavaries1000k03forplots');
brush2(1)=0.9915;
for i=2:9
brush2(i)=a1.a2(i-1).maxcol(25); 
end
plot(0:10:80, brush2)
title('Full network max peformance k0')
ylim([0.9 1.01])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f = figure;

a1=load('1000k63forplotsforsight0.mat');
b2=load('1000k64forplotsforsight0.mat');
y2d=[b2.a2(7).diversity; b2.a2(3).diversity; a1.a2(7).diversity]';
plot(1:25, y2d)
legend('lattice non ikea', 'full network non ikea', 'full network with ikea')
title('Diversity of solutions, k6')

f = figure;

a1=load('1000k03forplotsforsight0.mat');
b2=load('1000k04forplotsforsight0.mat');
y2d=[b2.a2(7).diversity; b2.a2(3).diversity; a1.a2(7).diversity]';
plot(1:25, y2d)
legend('lattice non ikea', 'full network non ikea', 'full network with ikea')
title('Diversity of solutions, k0')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f = figure;
p = uipanel('Parent',f,'BorderType','none'); 
p.Title = 'Diversity dynamics with different network topologies, k6'; 
p.TitlePosition = 'centertop'; 
p.FontSize = 12;
p.FontWeight = 'bold';

subplot(2,2,1,'Parent',p) 
load('1000k64forplotsforsight0.mat')
lattice=load('1000k643forplotssight0.mat');
plot(1:25, a2(10).diversity, '-.')
hold on
plot(1:25, lattice.blu(2).diversity, '-.r*')
plot(1:25, a2(3).diversity, '--mo')
plot(1:25, lattice.blu(1).diversity, ':bs')

legend('ikea with random', 'ikea with lattice', 'nonikea with random', 'nonikea with lattice')
title('Diversity of solutions')
xlabel({'Time'});
ylabel(('Average # of solutions')); 

subplot(2,2,2,'Parent',p) 
load('1000k64forplotsforsight0.mat')
lattice=load('1000k643forplotssight0.mat');
y2d=[a2(10).avg; a2(14).avg; a2(3).avg; a2(7).avg;]'; 
plot(1:25, a2(10).avg, '-.')
hold on
plot(1:25, lattice.blu(2).avg, '-.r*')
plot(1:25, a2(3).avg, '--mo')
plot(1:25, lattice.blu(1).avg, ':bs')
legend('ikea with random', 'ikea with lattice', 'nonikea with random', 'nonikea with lattice')
title ('Average performance')
xlabel({'Time'});
ylabel(('Standardized performance')); 

subplot(2,2,3,'Parent',p) 
load('1000k63forplotsforsight0.mat')
y2d=[a2(7).diversity; a2(3).diversity]';
plot(1:25, y2d)
legend('ikea', 'nonikea')
title('Diversity of solutions')
xlabel({'Time'});
ylabel(('Average # of solutions')); 

subplot(2,2,4,'Parent',p) 
load('1000k63forplotsforsight0.mat')
y2d=[a2(7).avg; a2(3).avg]';
plot(1:25, y2d)
legend('ikea', 'nonikea')
title('Full network average peformance')
xlabel({'Time'});
ylabel(('Standardized performance')); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = figure;
p = uipanel('Parent',f,'BorderType','none'); 
p.Title = 'Diversity variance with different network topologies, k0'; 
p.TitlePosition = 'centertop'; 
p.FontSize = 12;
p.FontWeight = 'bold';

subplot(2,2,1,'Parent',p) 
load('1000k04forplotsforsight0.mat')
plot(1:25, a2(10).diversity, '-.')
hold on
plot(1:25, a2(14).diversity, '-.r*')
plot(1:25, a2(3).diversity, '--mo')
plot(1:25, a2(7).diversity, ':bs')

legend('ikea with random', 'ikea with lattice', 'nonikea with random', 'nonikea with lattice')
title('Diversity of solutions')
xlabel({'Time'});
ylabel(('Average # of solutions')); 

subplot(2,2,2,'Parent',p) 
load('1000k04forplotsforsight0.mat')
y2d=[a2(10).avg; a2(14).avg; a2(3).avg; a2(7).avg;]'; 
plot(1:25, a2(10).avg, '-.')
hold on
plot(1:25, a2(14).avg, '-.r*')
plot(1:25, a2(3).avg, '--mo')
plot(1:25, a2(7).avg, ':bs')
legend('ikea with random', 'ikea with lattice', 'nonikea with random', 'nonikea with lattice')
title ('Average performance k0')
xlabel({'Time'});
ylabel(('Standardized performance ')); 

subplot(2,2,3,'Parent',p) 
load('1000k03forplotsforsight0.mat')
y2d=[a2(7).diversity; a2(3).diversity]';
plot(1:25, y2d)
legend('ikea', 'nonikea')
title('Diversity of solutions')
xlabel({'Time'});
ylabel(('Average # of solutions')); 

subplot(2,2,4,'Parent',p) 
load('1000k03forplotsforsight0.mat')
y2d=[a2(7).avg; a2(3).avg]';
plot(1:25, y2d)
legend('ikea', 'nonikea')
title('Full network average peformance k0')
xlabel({'Time'});
ylabel(('Standardized performance')); 
