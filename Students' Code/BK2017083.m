% (1)
f = imread('lenna.tif');
imshow(f);

% (2)
r = f(:, :, 1);
g = f(:, :, 2);
b = f(:, :, 3);

figure
subplot(131), imshow(r), title('Red');
subplot(132), imshow(g), title('Green');
subplot(133), imshow(b), title('Blue');

% (3)
hsi = rgb2hsi(f);
h = hsi(:, :, 1);
s = hsi(:, :, 2);
i = hsi(:, :, 3);

figure
subplot(131), imshow(h), title('Hue');
subplot(132), imshow(s), title('Saturation');
subplot(133), imshow(i), title('Intensity');

%smoothing rgb
si = fspecial('average', [5 5]);
sie = imfilter(r, si);
figure, imshow(sie);

k = fspecial('average', [5 5]);
kug = imfilter(g, k);
figure, imshow(kug);

ro = fspecial('average', [5 5]);
ron = imfilter(b, ro);
figure, imshow(ron);

irgb = cat(3, sie, kug, ron);
figure, imshow(irgb);

%smoothing hsi
si = fspecial('average', [5 5]);
sie1 = imfilter(h, si);
figure, imshow(sie1);

k1 = fspecial('average', [5 5]);
kug1 = imfilter(s, k1);
figure, imshow(kug1);

ro1 = fspecial('average', [5 5]);
ron1 = imfilter(i, ro1);
figure, imshow(ron1);

xhsi = cat(3, sie1, kug1, ron1);
Xxhsi = rgb2hsi(xhsi);
figure, imshow(Xxhsi);

%a = (1 * k.^-1);
%b = (k * pi)* (1 * 2.^-1);
%x = a * sin(b);

t  = -5:5;
x = 0;
x = @(t) ((1/k)*sin((k*pi)/2)*cos((k*pi*t)/2));
for k = 1:20;
    g = x(t(k));
end

figure, plot(t,x);
title('KUGOTSI SILENCE RONALD BK2017083');
xlabel('t');
ylabel('x');
legend('x(t)');


