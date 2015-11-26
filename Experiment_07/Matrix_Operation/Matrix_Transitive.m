%% MATRIX TRANSITIVITY 
%%
clc;
clear all;
M = [1 1 0 0 0; 1 1 0 0 1; 0 0 1 0 0; 0 0 0 1 0; 0 1 0 0 1];
[rows, cols] = size(M);

isTrans = true;

for i=1:rows
    for j=1:cols
        for k=cols:1
            l1 = M(i,j);
            l2 = M(j,k);
            l3 = M(i,k);
            p = min(l1, l2);
            
            if l3 <= p
                isTrans = false;
                break;
            end
            
        end
    end
end

if isTrans
    fprintf('ITS A TRANSITIVE MATRIX!\n');
else
    fprintf('ITS IS NOT A TRANSITIVE MATRIX!\n');
end