figure('name', 'Plotting without approximation');

X = [];
Y = [];

for x = -pi:0.1:-pi/2
    X = [X, x];
    Y = [Y, sin(2*x)];
end

hold on

for x = -pi/2:0.1:0
   X = [X, x];
   Y = [Y, 0];
end

hold on 

for x = 0:0.1:pi
  X = [X, x];
  Y = [Y, sin(2*x)];
end

set(findall(gca, 'Type', 'Line'),'LineWidth',0.5);

graph1 = plot(X,Y);
set(graph1,'LineWidth',2);

yL = get(gca,'YLim');
xL = get(gca,'XLim');
line(xL,[0 0],'Color','k');
line([0 0],yL,'Color','k');

title('Representation of f(x)');
xlabel('x-axis');
ylabel('y-axis');

axis tight
grid on