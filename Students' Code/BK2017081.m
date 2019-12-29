f=imread('lenna.tif');
figure, imshow(f);

r=f(:, :, 1);
g=f(:, :, 2);
b=f(:, :, 3);
figure
subplot(131), imshow(r), title('Red');
subplot(132), imshow(g), title('Green');
subplot(133), imshow(b), title('Blue');

hsi=rgb2hsi(f);
h=hsi(:, :, 1);
s=hsi(:, :, 2);
i=hsi(:, :, 3);
figure
subplot(131), imshow(h), title('Hue');
subplot(132), imshow(s), title('Saturation');
subplot(133), imshow(i), title('Intensity');



r5=fspecial('average', [5 5]);
rr=imfilter(r, r5);
 imshow(rr);

g5=fspecial('average', [5 5]);
gg=imfilter(g, g5);
 imshow(gg);

b5=fspecial('average', [5 5]);
bb=imfilter(b, b5);
 imshow(bb);
rgb=cat(3, rr, gg, bb);
figure, imshow(rgb);

i5=fspecial('average', [5 5]);
ia=imfilter(i, i5);
figure, imshow(ia);
rgb=cat(3, h, s, ia);
figure, imshow(rgb);

t=-5:5;
x=0;
for k=1:20
 x=x+1/k*(sin(k*pi)/2)*cos((k*pi*t)/2);
xlabel('Faith Magaselah')
legend('x(t)')
end
plot(t,x)














