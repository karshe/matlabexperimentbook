%%McCulloch-Pitts Neuron Model%%
%% AND FUNCTION %%
clc; clear all
x1 = [1 1 0 0];
x2 = [1 0 1 0];
y = [];

for i=1:size(x1,2)
    yn = 1*x1(i) + 1*x2(i); %% AND FUNCTION %%
    y0 = McCullochPittsModel(yn, 1, 2); %% AND FUNCTION THRESHOLD = 2 %%
    y = [y, y0];
end

disp(y);