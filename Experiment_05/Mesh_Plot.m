[x,y]=meshgrid(0:0.05:2,-2:0.05:2);
z=y.^2.*(x-1).^2./(y.^2+(x-1).^2);
mesh(x,y,z),view([-23,30])
figure(2);
plot(x,z);