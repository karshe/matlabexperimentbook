clear all; clc
format long;

a=625700; %City Population - 2011%
b=1.0124; %Growth rate%

X=[];
Y=[];
R=[];

for x=1:1:4
    X=[X, x];
    Y=[Y, a*(b^x)]; %Model%
    y=a*(b^x);
    roundPop = 100 * ceil(y/100);
    R=[R, roundPop];
end
figure(1);
hold on
subplot(2,1,1);
plot(2011+X,R);
title('Subplot 1 : Population of City (Round-off)');
xlabel('Year');
ylabel('City Population');

subplot(2,1,2);
plot(2011+X,Y,'k-');
title('Subplot 2 : Population of City');
xlabel('Year');
ylabel('City Population');

fprintf('Population of city in 2015 would be %1f \n', roundPop);