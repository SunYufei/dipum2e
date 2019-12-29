%show original image
f=imread('lenna.tif');
figure,imshow('lenna.tif');
% RGB color
r = f(:, :, 1);
g = f(:, :, 2);
b = f(:, :, 3);

figure
subplot(131), imshow(r), title('Red');
subplot(132), imshow(g), title('Green');
subplot(133), imshow(b), title('Blue');

% Question 3 HSI

hsi = rgb2hsi(f);
h = hsi(:, :, 1);
s = hsi(:, :, 2);
i = hsi(:, :, 3);

figure
subplot(131), imshow(h), title('Hue');
subplot(132), imshow(s), title('Saturation');
subplot(133), imshow(i), title('Intensity');

% Question 4
r1=fspecial('average',[5 5]);
red=imfilter(r,r1);
%imshow(red);

g1=fspecial('average',[5 5]);
green=imfilter(g,g1);
%imshow(green);

b1=fspecial('average',[5 5]);
blue=imfilter(b,b1);
%imshow(blue);
rgb=cat(3,red,blue,green);
figure,imshow(rgb);

%Question 5
h1=fspecial('average',[5 5]);
hue=imfilter(h,h1);
%imshow(hue);

s1=fspecial('average',[5 5]);
saturation=imfilter(s,s1);
%imshow(saturation);

i1=fspecial('average',[5 5]);
intensity=imfilter(i,i1);
%imshow(intensity);
hsi=cat(3,hue,saturation,intensity);
figure,imshow(hsi);

%graph
k = 1:20;
t = -5:5;
a = (1 * k.^-1);
b = (k * pi)* (1 * 2.^-1);
x = a * sin(b);
plot(x, t), title('Evans Muchinguri'), legend('x(t)'), xlabel('t'), ylabel('x');













