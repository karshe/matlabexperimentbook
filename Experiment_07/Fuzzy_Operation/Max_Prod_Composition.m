%% MAX-PRODUCT COMPOSITION FOR FUZZY SETS
%%

clc; 
clear all;

R = [0.7 0.5; 0.8 0.4];
S = [0.9 0.6 0.5; 0.1 0.7 0.5];
E = [];
m = [];

[r,c] = size(R*S);

for lp=1:r
    for i=1:c
       for j=1:r
           a = R(lp,j);
           b = S(j,i); 
           m = [m, min(a*b)];
       end
       E(lp,i) = max(m);
       m = zeros();
    end
end
E = vec2mat(E,c);
fprintf('MAX-PRODUCT COMPOSITION \n');
disp(E);