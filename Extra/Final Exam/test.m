clear all;
f = imread('lenna.tif');
f = im2double(f);
imshow(f);
fr = f(:, :, 1);
fg = f(:, :, 2);
fb = f(:, :, 3);
figure
subplot(131), imshow(fr), title('Red');
subplot(132), imshow(fg), title('Green');
subplot(133), imshow(fb), title('Blue');
hsi = rgb2hsi(f);
fh = hsi(:, :, 1);
fs = hsi(:, :, 2);
fi = hsi(:, :, 3);
figure
subplot(131), imshow(fh), title('Hue');
subplot(132), imshow(fs), title('Saturation');
subplot(133), imshow(fi), title('Intensity');
w=fspecial('average',5);
new_f=imfilter(f,w,'replicate');
figure,imshow(new_f);

fii=imfilter(fi,w,'replicate');
new_hsi=cat(3,fh,fs,fii);
new_hsi=hsi2rgb(new_hsi);
figure,imshow(new_hsi);

diff=new_hsi-new_f;
figure,imshow(diff);