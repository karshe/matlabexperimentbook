%%Vector%%
x = [];
for t = 1:1:10
    x0 = t * sin(t);
    x = [x, x0];
end
disp('Output : ');
disp(x);