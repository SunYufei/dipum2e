f = imread('lenna.tif');
imshow(f);
r = f(:,:,1);
g = f(:,:,2);
b = f(:,:,3);
figure
subplot(131),imshow(r),title('Red');
subplot(132),imshow(g),title('Green');
subplot(133),imshow(b),title('Blue');

hsi = rgb2hsi(f);
h = hsi(:,:,1);
s = hsi(:,:,2);
i = hsi(:,:,3);
figure
subplot(131),imshow(h),title('Hue');
subplot(132),imshow(s),title('Saturation');
subplot(133),imshow(i),title('intensity');

f = imread('lenna.tif');
figure,imshow(f);

w5 = fspecial('average',[5 5]);
g = imfilter(f, w5);
figure,imshow(g);

fi = fspecial('average',[5 5]);
gi= imfilter(i,fi);
figure,imshow(gi);
gi = cat(3, r,g,b);
figure,imshow(gi);


fcd = g - gi;
figure,imshow(fcd);

t = -5:5;
for k = 1:20
x = x + 1/k.*sin((k.*pi)/2).*cos((k.*pi.*t)/2);
end
plot(t,x)
