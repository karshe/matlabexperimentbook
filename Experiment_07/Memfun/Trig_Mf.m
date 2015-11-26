x = 0:0.2:10;
y = trimf(x,[3 4 5]);
plot(x,y)
xlabel('trimf, P = [3 4 5]')
ylim([-0.05 1.05])