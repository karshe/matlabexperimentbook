%% Tolerance relation
%% In mathematics, a tolerance relation is a relation that is reflexive and 
%% symmetric. It does not need to be transitive
clc;
clear all;
M = [1 1 0 0 0; 1 1 0 0 1; 0 0 1 0 0; 0 0 0 1 0; 0 1 0 0 1];

if isequal(M, transpose(M)) 
    if diag(M) == eye
       fprintf('ITS A TOLERANCE MATRIX!\n');
    else
        fprintf('ITS NOT A TOLERANCE MATRIX!\n');
    end
end