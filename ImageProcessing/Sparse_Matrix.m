%% SPARSE MATRIX %%
A = [1 0 0; 0 0 1; 0 3 4; 4 0 2; 0 2 0];
S = sparse(A);

fprintf('ORIGINAL MATRIX : A\n');
disp(A);

fprintf('SPARSE MATRIX : S\n');
disp(S);

%% Convert sparse matrix to full matrix %%
O = full(S);
fprintf('MATRIX FROM SPARSE S : O\n');
disp(O);