f = imread('Sample/bitmap.bmp');
b = f(:,:,1);

figure('name','Red Channel Histogram');
imhist(b);

b = f(:,:,2);

figure('name','Blue Channel Histogram');
imhist(b);

b = f(:,:,3);

figure('name','Green Channel Histogram');
imhist(b);