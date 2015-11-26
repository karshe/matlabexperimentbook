% A = rand(300, 500, 3);
% B = mat2gray(A);
% imshow(B);

% C = zeros(150, 150);
% 
% for i=1:1:150
%    for j=1:1:150
%       x =  randi(150,1,1);
%       C(i,x) = rand(1,1);  
%    end
% end

% X = mat2gray(C);
% 
% imshow(C);
clc; clear all
A = zeros(150, 150);
for i=1:1:150
      A(i,45) = 1;
      A(i,83) = 1;
end

X = mat2gray(A);
imshow(X);