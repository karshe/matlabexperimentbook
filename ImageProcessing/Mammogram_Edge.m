warning('off','all') %% DON'T WANT TO SEE ANY WARNINGS
clc; 
clear all
%% Mammogram Sample %%
img_url = 'Sample/3CC_0.jpg';

I = imread(img_url); %% READ IMAGE
figure('name', 'Original Mammogram Sample');
imshow(I);

K = imadjust(I,[0 1],[1 0]); %% INVERT IT 1-0 and 0-1
figure('name', 'Inverted Image using imadjust');
imshow(K)


E_I = I(:,:,1);

E_k = edge(E_I,'sobel');
figure('name','Sobel Edge Detection');
imshow(E_k);

E_k = edge(E_I,'prewitt');
figure('name','Prewitt Edge Detection');
imshow(E_k);

E_k = edge(E_I,'canny');
figure('name','Canny Edge Detection');
imshow(E_k);

E_k = edge(E_I,'roberts');
figure('name','Roberts Edge Detection');
imshow(E_k);

E_k = edge(E_I,'log');
figure('name','Log Edge Detection');
imshow(E_k);