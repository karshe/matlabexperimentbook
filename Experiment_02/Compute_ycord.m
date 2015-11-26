%%Compute y-coordinates for a Straight Line%%
m = 0.5;
c = -2;
x1 = [];
y1 = [];
for x = 0:0.5:10
    y = (m*x)+c;
    x1 = [x1,x];
    y1 = [y1,y];
    disp(['For x : ',num2str(x),' y : ',num2str(y)]);
end
plot(x1,y1);
title('Plotting Straight Line using MATLAB');
xlabel('x');
ylabel('y');