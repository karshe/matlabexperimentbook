clear all; clc
a=625700;
b=1.0124;
x=4;
y=a*(b^x);
format long;
roundPop= 100 * ceil(y/100);
fprintf('Population of city in 2015 would be %1f \n', roundPop);