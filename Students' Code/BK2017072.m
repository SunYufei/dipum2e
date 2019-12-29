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

r1 = fspecial('average',[5 5]);
r2 = imfilter(r, r1);
g1 = fspecial('average',[5 5]);
g2 = imfilter(g, r1);
b1 = fspecial('average',[5 5]);
b2 = imfilter(b, r1);

rgbfinal = cat(3, r2, g2, b2);
figure, imshow(rgbfinal);


i1 = fspecial('average',[5 5]);
i2 = imfilter(i, i1);

hsifinal = cat(3, h, s, i2);
%figure, imshow(hsifinal);

convertToRGB = hsi2rgb(hsifinal);
figure, imshow(convertToRGB);

%diff = rgbfinal - convert2RGB;
%figure, imshow(diff);

%k = 1:20;
%t = -5:5;
%a = (1 * k.^-1);
%b = (k * pi)* (1 * 2.^-1);
%x = a * sin(b);
%plot(x, t), title('Greatfortune Mamhova'), legend('x(t)'), xlabel('t'), ylabel('x');








