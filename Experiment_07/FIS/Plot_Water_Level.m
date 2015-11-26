clear all; clc

range = 0:0.1:10;

hold on

subplot(2,1,1);
low = gaussmf(range, [1.5 0]);
plot(range,low,'y'); hold on

okay = gaussmf(range, [1.5 5]);
plot(range,okay,'r'); hold on

high = gaussmf(range, [1.5 10]);
plot(range,high,'m'); hold on

subplot (2,1,2);
union_all = max(low, okay);
union_all = max(union_all, high);
plot(range,union_all,'b'); hold on

hold off