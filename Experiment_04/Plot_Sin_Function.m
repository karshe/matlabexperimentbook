%%Plot Sine Function%%
y1 = []; % Empty vector for y 
x1 = []; % Empty vector for x
for x = 0:0.1:2 % Loop
   y = sin(x);
   %Appending element to vector
   x1 = [x1, x]; 
   y1 = [y1,y];
end
%Plot function
figure('name','Sine Function using Vector');
plot(x1,y1);
title('Sine Function');
xlabel('x-axis');
ylabel('y-axis');