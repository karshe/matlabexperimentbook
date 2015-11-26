close all;
clear all;
clc;
%% The Universe of Discourse is [0,10]; The points are defined with a step of 0.1 %%
x = (0:0.1:10); 
%% First Membership Function, 'Gaussian type'
u1=gaussmf(x,[1,4]); 
%% Compute the membership degrees for the COMPLEMENT
u_complement=(1-u1); 

%% LETS PLOT
hold on
%% SUBPLOT 1 : FUZZY SET A
subplot(2,1,1); 
plot(x,u1,'r'); hold on
axis([0 10 -0.05 1.05]);
legend ('\mu_{A}');
title('FUZZY SET $A$', 'Interpreter','Latex');
xlabel('Universe');
ylabel('Membership Degree');
%% SUBPLOT 1 : COMPLEMENT OF SET A
subplot (2,1,2) 
plot(x, u_complement,'color','b','linewidth',2)
axis([0 10 0 1.05]);
l = legend ('$1 - \mu_{A}$');
set(l,'Interpreter','Latex');
title('COMPLEMENT OF FUZZY SET $A$', 'Interpreter','Latex');
xlabel('Universe');
ylabel('Membership Degree');
%%
set(gcf, 'name', 'COMPLEMENT FUZZY SET A', 'numbertitle', 'off'); %figure name