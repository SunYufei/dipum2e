f=imread('lenna.tif');
figure,imshow(f);

r=f(:, :, 1);
g=f(:, :, 2);
b=f(:, :, 3);
figure
subplot(131),imshow(r),title('Red');
subplot(132),imshow(g),title('Green');
subplot(133),imshow(b),title('Blue');

hsi=rgb2hsi(f);
h=hsi(:, :, 1);
s=hsi(:, :, 2);
i=hsi(:, :,3);
figure
subplot(131),imshow(h),title('Hue');
subplot(132),imshow(s),title('Saturation');
subplot(133),imshow(i),title('intensity');

r5=fspecial('average',[5 5]);
rf=imfilter(r,r5);
figure,imshow(rf);

g5=fspecial('average',[5 5]);
gf=imfilter(g,g5);
figure,imshow(gf);

b5=fspecial('average',[5 5]);
bf=imfilter(b,b5);
figure,imshow(bf);

combined=cat(3,rf,gf,bf);
figure,imshow(combined);

i5=fspecial('average',[5 5]);
i6=imfilter(i,i5);
figure,imshow(i6);
irgb=cat(3,h,s,i6);
figure,imshow(irgb);

k = 1:20;
t = -5:5;
a = (1 * k.^-1);
b = (k * pi)* (1 * 2.^-1);
x = a * sin(b);
plot(x, t), title('graph'), legend('x(t)'), xlabel('t'), ylabel('x');

[rgbi, A, PPG]=colorgrad( f);
figure,imshow(rgbi,[]);


