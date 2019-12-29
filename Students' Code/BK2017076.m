%Que 1
f = imread('lenna.tif');
figure, imshow(f);

%Que 2
r = f(: , :, 1);
g = f(:, :, 2);
b = f(:, :, 3);

figure,
subplot(131), imshow(r), title('Red');
subplot(132), imshow(g), title('Green');
subplot(133), imshow(b), title('Blue');


%Que 3
hsi = rgb2hsi(f);
h = hsi(:, :, 1);
s = hsi(:, :, 2);
i = hsi(:, :, 3);
figure,
subplot(131), imshow(h), title('Hue');
subplot(132), imshow(s), title('Saturation');
subplot(133), imshow(i), title('Intensity');

%Que 4

w = fspecial('average', [5 5]);
r2 = imfilter(r , w);
g2 = imfilter(g, w);
b2 = imfilter(b, w);
figure, 
subplot(131), imshow(r2), title('Filtered Red');
subplot(132), imshow(g2), title('Filtered Green');
subplot(133), imshow(b2), title('Filtered Blue');


f2 = cat(3, r2, g2, b2);



%Question 5
w1 = fspecial('average', [5 5]);
h2 = imfilter(h , w);
s2 = imfilter(s, w);
i2 = imfilter(i, w);


h3  = h2 - 120;
s3 =  s2 - 120;
i3  = i2 - 120;

f5 = cat(3, h3, s3, i3);
figure;
imshow(f5);


%figure, 
subplot(131), imshow(h2), title('Filtered Hue');
subplot(132), imshow(s2), title('Filtered Saturation');
subplot(133), imshow(i2), title('Filtered Intensity');

f3 = cat(3, h2, s2, i2);

figure, imshow(f5);
figure, imshow(f3);


% Question B

figure, imshowpair(f2, f5, 'diff');

%Question 1 Graph

%k = 1:20;
%t = -5:5;
%a = 1 / k;
%b = (k * pi)/ (2);
%h = (k * pi * t)/ (2);
%x = (1 / k) * sin(b)* cos(h)
%plot(x, t), title('Rudo Mapfumba'), xlabel('t'), ylabel('x');










