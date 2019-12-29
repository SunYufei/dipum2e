f = imread('lenna.tif');
imshow(f);

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

figure
subplot(131), imshow(h), title('Hue');
subplot(132), imshow(s), title('Saturation');
subplot(133), imshow(i), title('Intensity');

w = fspecial('average', [5 5]);
r1 = imfilter(r, w);
figure, imshow(r1);

w = fspecial('average', [5 5]);
g1 = imfilter(g, w);
figure, imshow(g1);

w = fspecial('average', [5 5]);
b1 = imfilter(b, w);
figure, imshow(b1);

rgb = cat(3, r1, g1, b1);
figure, imshow(rgb);

w = fspecial('average', [5 5]);
i1 = imfilter(i, w);
figure, imshow(i1);

rgb1 = cat(3, i1, i1, i1);
figure, imshow(rgb1);

t = -5 : 5;
x = 0;
for k = 1 : 20
    x =  1/k * sin((k * pi)/2 )* cos((k * pi * t)/2);
end
x

figure
plot(t, x),ylabel('x'), xlabel('t'), title('THULANI MOYO BK2017077');








