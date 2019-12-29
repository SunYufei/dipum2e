
% question 1.1
w = imread('lenna.tif');
figure, imshow(w);


% question 1.2
r = w(:, :, 1);
g = w(:, :, 2);
b = w(:, :, 3);

figure
subplot(131), imshow(r), title('Red');
subplot(132), imshow(g), title('Green');
subplot(133), imshow(b), title('Blue');

% question 1.3

hsi = rgb2hsi(w);
h = hsi(:, :, 1);
s = hsi(:, :, 2);
i = hsi(:, :, 3);

figure
subplot(131), imshow(h), title('Hue');
subplot(132), imshow(s), title('Saturation');
subplot(133), imshow(i), title('Intensity');


% question 1.4


r1 = fspecial('average',[5 5]);
r2 = imfilter(r, r1);
g1 = fspecial('average',[5 5]);
g2 = imfilter(g, r1);
b1 = fspecial('average',[5 5]);
b2 = imfilter(b, r1);

rgbf = cat(3, r2, g2, b2);
figure, imshow(rgbf);


i1 = fspecial('average',[5 5]);
i2 = imfilter(i, i1);

hsif = cat(3, h, s, i2);
figure, imshow(hsif);

convertToRGB = hsi2rgb(hsif);
figure, imshow(convertToRGB);








% question 2
