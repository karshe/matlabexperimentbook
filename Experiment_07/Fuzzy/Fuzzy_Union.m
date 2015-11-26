close all

%% The Universe of Discourse is [0,10]; The points are defined with a step of 0.1 %%
x = (0:0.1:10); 
%% First Membership Function, 'Gaussian type'
u1=gaussmf(x,[1,4]); 
%% Second Membership Function, 'Triangular type'
u2=trimf(x,[3 6.5 9]);
%% Compute the membership degrees for the UNION using the "MAX" operator
u_reuniune=max(u1,u2); 

%% LETS PLOT
hold on
%% SUBPLOT 1 : FUZZY SET A & B
subplot(2,1,1); 
plot(x,u1,'r'); hold on
plot(x,u2,'m'); hold off
axis([0 10 0 1.05]);
legend ('A','B');
title('TWO FUZZY SET $A \& B$', 'Interpreter','Latex');

%% SUBPLOT 1 : UNION OF SET A & B
subplot (2,1,2);
plot(x, u_reuniune,'color','b','linewidth',2)
axis([0 10 0 1.05]);
l = legend ('$A \bigcup B$');
set(l,'Interpreter','Latex');
title('UNION OF TWO FUZZY SET $A \bigcup B$', 'Interpreter','Latex');

%%
set(gcf, 'name', 'Union of A and B fuzzy sets - "max" operator', 'numbertitle', 'off'); %figure name