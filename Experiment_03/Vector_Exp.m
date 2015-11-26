%%Vector%%
z = [];
for t = 1:1:10
    z0 = sin(t^2)/(t^2);
    z = [z, z0];
end
disp('Output : ');
disp(z);