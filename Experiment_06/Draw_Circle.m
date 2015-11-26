%%Script to draw Circle%%
x=[];
y=[];

r=1;

for th = 0:pi/50:2*pi
    x1 = r * cos(th);
    y1 = r * sin(th);
    x = [x,x1];
    y = [y,y1];
end
plot(x,y);