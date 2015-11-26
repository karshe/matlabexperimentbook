%% CHECKING SYMMETRIC MATRIX WITH BRAIN!
%%
clc;
clear all;

M = [1 1 0 0 0; 1 1 0 0 1; 0 0 1 0 0; 0 0 0 1 0; 0 1 0 0 1];
isSym = true;

if size(M,1) ~= size(M,2)
   error('IT SHOULD BE SQUARE MATRIX'); 
end

for rows=1:1:size(M,1)
   for cols=1:1:size(M,2)
       if M(rows,cols) ~= M(cols,rows)
           isSym = false;
           break;
       end
   end
end

if isSym
    fprintf('ITS A SYMMETRIC MATRIX!\n');
else
    fprintf('ITS IS NOT A SYMMETRIC MATRIX!\n');
end