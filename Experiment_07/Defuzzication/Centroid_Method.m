clc;
clear all;

x = -10:0.1:10;

mf1 = trapmf(x,[-10 -8 -2 2]);
mf2 = trapmf(x,[-5 -3 2 4]);
mf3 = trapmf(x,[2 3 8 9]);
mf = max(0.5*mf2, max(0.9*mf1, 0.1*mf3));

figure('name','defuzz');
hold on
ylim([0 1]);

plot(x, mf,'LineWidth',2); hold on

x1 = defuzz(x, mf1,'centroid'); 
h1 = line([x1 x1],[-0.2 1.2],'Color','k');
t1 = text(x1, 0.2,' mf1','FontWeight','bold');

x2 = defuzz(x, mf2,'centroid'); 
h2 = line([x2 x2],[-0.2 1.2],'Color','k');
t2 = text(x2, 0.2,' mf2','FontWeight','bold');

x3 = defuzz(x, mf3,'centroid'); 
h3 = line([x3 x3],[-0.2 1.2],'Color','k');
t3 = text(x3, 0.2,' mf3','FontWeight','bold');

