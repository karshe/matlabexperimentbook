x = [];
y = [];
z = [1];
size = 5;

for n=1:1:size
    x=[x,n];
    y=[y, Factorial_Function(n)];
    
end

for n=2:1:size
    z=[z, y(n)-y(n-1)];
end

plot(x,y);
title('Plotting Factorial of first 6 natural numbers');
xlabel('Natural Numbers');
ylabel('Factorial');
grid on
axis tight
area(x,y,'LineWidth',2,'FaceColor',[0 0 1]); %%
%% bar(x,y,'FaceColor',[0 0 1],'LineWidth',2);