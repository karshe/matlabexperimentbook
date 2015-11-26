clc; clear all

Orig_Img = imread('Samples/1.jpg');
Gray_Img = rgb2gray(Orig_Img);

figure('name','Original Photo');
imshow(Gray_Img); 

figure('name','Reduced Photo');

subplot(2,3,1)
[x,map] = gray2ind(Gray_Img, 4);
imshow(x, map);
title('4-bit quantization');

subplot(2,3,2)
[x,map] = gray2ind(Gray_Img, 8);
imshow(x, map);
title('8-bit quantization');

subplot(2,3,3)
[x,map] = gray2ind(Gray_Img, 16);
imshow(x, map);
title('16-bit quantization');

subplot(2,3,4)
[x,map] = gray2ind(Gray_Img, 32);
imshow(x, map);
title('32-bit quantization');

subplot(2,3,5)
[x,map] = gray2ind(Gray_Img, 64);
imshow(x, map);
title('64-bit quantization');

subplot(2,3,6)
[x,map] = gray2ind(Gray_Img, 128);
imshow(x, map);
title('128-bit quantization');

figure('name','Histograms of Reduced Photo');
subplot(2,3,1)
[x,map] = gray2ind(Gray_Img, 4);
imhist(x, map);
title('4-bit');

subplot(2,3,2)
[x,map] = gray2ind(Gray_Img, 8);
imhist(x, map);
title('8-bit');

subplot(2,3,3)
[x,map] = gray2ind(Gray_Img, 16);
imhist(x, map);
title('16-bit');

subplot(2,3,4)
[x,map] = gray2ind(Gray_Img, 32);
imhist(x, map);
title('32-bit');

subplot(2,3,5)
[x,map] = gray2ind(Gray_Img, 64);
imhist(x, map);
title('64-bit');

subplot(2,3,6)
[x,map] = gray2ind(Gray_Img, 128);
imhist(x, map);
title('128-bit');