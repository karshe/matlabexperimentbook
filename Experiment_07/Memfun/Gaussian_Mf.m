%% Gaussian curve membership function - MATLAB gaussmf %%
x = 0:0.1:10;
y = gaussmf(x,[0.5 5]);
plot(x,y)
xlabel('gaussmf, P=[0.5 5]')