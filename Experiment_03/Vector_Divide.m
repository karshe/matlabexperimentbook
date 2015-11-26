%%Vector%%
y = [];
for t = 1:1:10
    y0 = (t-1) / (t+1);
    y = [y, y0];
end
disp('Output : ');
disp(y);