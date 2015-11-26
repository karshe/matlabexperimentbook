%% Mammogram Sample %%
img_url = 'Sample/3CC_0.jpg';

I = imread(img_url); %% READ IMAGE
figure('name', 'Original Mammogram Sample');
imshow(I);

K = imadjust(I,[0 1],[1 0]); %% INVERT IT
figure('name', 'Inverted Image using imadjust');
imshow(K)