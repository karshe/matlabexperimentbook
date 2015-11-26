%%McCulloch-Pitts Neuron Model%%
%% AND FUNCTION %%
clc; clear all
x1 = [1 1 0 0];
x2 = [1 0 1 0];
y = [];

for i=1:size(x1,2)
    yn = 3*x1(i) + 3*x2(i); %% OR FUNCTION %%
    y0 = McCullochPittsModel(yn, 1, 3); %% OR FUNCTION THRESHOLD = 3 %%
    y = [y, y0];
end

disp(y);