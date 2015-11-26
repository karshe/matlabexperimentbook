clear all; clc
format long

ln = @(x)(log(x)); %%Anonymous Functions for Natural Log%%

y0=120;
y=y0/2;
k = [];
T = [];

for t=0:10:1620
    k = [k, ln(y/y0)/t]; %%Constant of Proportionality%%
    T = [T,t];
end

figure('name', 'Constant of Proportionality v/s Life of Isotope');
plot(T,k);
grid on
axis tight
xlabel('Life of Isotope (in years)');
ylabel('$k = \frac{\ln \frac{y}{y_0}}{t}$','Interpreter','LaTex');