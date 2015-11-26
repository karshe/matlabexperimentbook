close all % closes all the open figure windows
clear all % removes all variables in the workspace
clc       % clears the command window
x = (0:0.1:10); % The universe of discourse is [0,10]; the points are defined with a step of 0.1
params=[2 3 7 9];% parameters for a trapezoidal membership function
y = trapmf(x, params); % compute the membership function values

plot(x, y,'linewidth',2);

axis([0 10 -0.1 1.1]);

xlabel('Universe of Discourse'); % horizontal axis variable name
ylabel ('Membership Degree'); % vertical axis variable name
set(gcf, 'name', 'Trapezoidal Membership Function', 'numbertitle', 'off'); % figure name

hold on
x1=2.75;
u1=evalmf(x1,params,'trapmf');
fprintf( 'x1 = %1.2f has the Memebership Degree u1 = %1.2f\n',x1,u1);
plot (x1,u1,'r*') % place the point on the graph
plot ([x1,x1],[-0.1,u1],...
    'linestyle','-','color','r')
plot ([0,x1],[u1,u1],...
    'linestyle','-','color','r')

hold on
str1 = strcat('  MEMDEGREE( ',num2str(x1),') = ',num2str(u1));
text(x1,u1,str1);

hold off