f=imread('lenna.tif');
imshow(f);
r= f(:, :, 1);
g= f(:, :, 2);
b= f(:, :, 3);

figure
subplot(131), imshow(r), title('Red');
subplot(132), imshow(g), title('Green');
subplot(133), imshow(b), title('Blue');

hsi= rgb2hsi(f);
h= hsi(:, :, 1);
s= hsi(:, :, 2);
i= hsi(:, :, 3);

figure
subplot(131), imshow(h), title('Hue');
subplot(132), imshow(s), title('Saturation');
subplot(133), imshow(i), title('Intensity');

r5= fspecial('average', [5 5]);
rr5= imfilter(r, r5);
figure, imshow(rr5);

g5= fspecial('average', [5 5]);
gg5= imfilter(g, g5);
figure, imshow(gg5);

b5= fspecial('average', [5 5]);
bb5= imfilter(b, b5);
figure, imshow(bb5);

rgb= cat(3, rr5, gg5, bb5);
figure, imshow(rgb);

i5= fspecial('average', [5 5]);
ii5= imfilter(i, i5);
figure, imshow(ii5);


Hrgb= cat(3, h, s, ii5);
figure, imshow(Hrgb);

hsiZ= hsi2rgb(Hrgb);
figure, imshow(hsiZ);


rgb= tofloat(rgb);
hsiZ= tofloat(hsiZ);
s= rgb - hsiZ;
figure, imshow(imcomplement(s), []);

t= -5:5;
y= (1/k)*sin(k)


