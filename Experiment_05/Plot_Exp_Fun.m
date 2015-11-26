%%Plot Exponential Function%%
y1 = []; %Empty vector%
x1 = []; %Empty vector%
for x = 0:0.1:4
   y = exp(-0.4*x)*sin(x); %Exponential Function%
   x1 = [x1, x];
   y1 = [y1,y];
end
plot(x1,y1);
title('Ploting Exponential Function');
xlabel('$f(x)=e^{-0.4\times x}\times \sin {x}$','Interpreter','LaTex');
ylabel('$y=f(x)$','Interpreter','LaTex');