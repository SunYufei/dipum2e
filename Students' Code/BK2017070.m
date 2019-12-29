x = 0:10;
y = x;
plot(x, y)
f = imread('lenna.tif');
figure, imshow(f);
r = f(:, :, 1);
g = f(:, :, 2);
b = f(:, :, 3);

figure
subplot(131), imshow(r), title('Red');
subplot(132), imshow(g), title('Green');
subplot(133), imshow(b), title('Blue');
hsi = rgb2hsi(f);
h = hsi(:, :, 1);
s = hsi(:, :, 2);
i = hsi(:, :, 3);
figure,
subplot(131), imshow(h), title('hue');
subplot(132), imshow(s), title('saturation');
subplot(133), imshow(i), title('Intensity');
p = fspecial('average', [5 5]);
t = imfilter(r, p);
figure, imshow(t);
p = fspecial('average', [5 5]);
e = imfilter(g, p);
figure, imshow(e);
p = fspecial('average', [5 5]);
t = imfilter(b, p);
figure, imshow(t);
p = fspecial('average', [5 5]);
d = imfilter(i, p);
figure, imshow(d);


t = -5:5;
x=0;
for k = 1:20
    x = x+1/k * (sin((k*pi)/2))*(cos((k*pi*t)/2));
end
plot(t, x);
title('Daniye')





    




