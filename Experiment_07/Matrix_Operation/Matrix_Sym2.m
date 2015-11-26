%% CHECKING SYMMETRIC MATRIX
%%
%% A = [1 1 0 0 0; 1 1 0 0 1; 0 0 1 0 0; 0 0 0 1 0; 0 1 0 0 1];
A = [1 0.5 0.3 0.6 0; 0.5 1 0.7 0.5 0.9; 0.3 0.7 1 0.6 0; 0.6 0.5 0.6 1 0.5; 0 0.9 0 0.5 1];
Tra_A = transpose(A);

if isequal(A, Tra_A)
    fprintf('ITS A SYMMETRIC MATRIX!\n');
else
    fprintf('ITS IS NOT A SYMMETRIC MATRIX!\n');
end