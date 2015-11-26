clear all; clc

format long;

A = [];
T = [];
P = 500;
R = 0.1;
N = 4;

for t=1:1:5
    T = [T,t];
    A = [A, P *( 1+ (R/N) )^(N*t)];
end

figure(1);
grid on
axis tight
plot(T, A);
title('Compound Calculated Quarterly');
xlabel('Time (in years)');
ylabel('Amount computed (in $)');