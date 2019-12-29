f=imread('lenna.tif');
imshow(f);
r=f(:, :, 1);
g=f(:, :, 2);
b=f(:, :, 3);
figure
subplot(131), imshow(r), title('red');
subplot(132), imshow(g), title('green');
subplot(133), imshow(b), title('blue');
hsi = rgb2hsi(f);
h=hsi(:, :, 1);
s=hsi(:, :, 2);
i=hsi(:, :, 3);
figure
subplot(131), imshow(h), title('Hue');
subplot(132), imshow(s), title('Saturation');
subplot(133), imshow(i), title('Intensity');


w5 = fspecial('average',[5 5]);
g5=imfilter(f, w5);
figure, imshow(g5);

r= imread('lenna.tif');
g= imread('lenna.tif');
b= imread('lenna.tif');
figure
subplot(131), imshow(r), title('red');
subplot(132), imshow(g), title('green');
subplot(133), imshow(b), title('blue');

w5 = fspecial('average',[5 5]);
g5=imfilter(f, w5);
figure, imshow(g5);
r= imread('lenna.tif');
g= imread('lenna.tif');
b= imread('lenna.tif');
figure
subplot(131), imshow(r), title('red');
subplot(132), imshow(g), title('green');
subplot(133), imshow(b), title('blue');

hsi = rgb2hsi(f);
i=hsi(:, :, 3);
figure, imshow(i);
hsi = rgb2hsi(f);
i=hsi(:, :, 3);
i = fspecial('average',[5 5]);
g5=imfilter(f, i);
figure, imshow(g5);

rgb= cat(3, r, g, b);
figure, imshow(rgb);

b=i-rgb;
figure, imshow(b);

t= -5:5;
x=0;
for k=1:20
    x=x+ (1/k * (sin(k*pi)/2) * cos((k*pi*t)/2));
end
plot(t, x), title('Prince');



