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

figure
subplot(131), imshow(h), title('Hue');
subplot(132), imshow(s), title('Saturation');
subplot(133), imshow(i), title('Intensity');

m1 = fspecial('average', [5  5]);
e1 = imfilter(r, m1);
figure, imshow(e1);

m2 = fspecial('average', [5  5]);
e2 = imfilter(g, m2);
figure, imshow(e2);

m3 = fspecial('average', [5  5]);
e3 = imfilter(b, m3);
figure, imshow(e3);

rgb = cat(3, e1, e2,e3);
figure, imshow(rgb);


g = 255 - rgb;
figure, imshow(g);


hsi = rgb2hsi(f);
comp = hsicomp(hsi);
h = hsi2rgb(comp);
figure, imshow(rgb);

t = -5:5;
x  = 0;
for k =1:20
    x = x + 1/ k* (sin((k*pi)/2)*cos((k*pi*t)/2))
end
plot(t, x);

    
    
    




























