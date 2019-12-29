f=imread('lenna.tif');
figure,imshow(f);
fr=f(:, :, 1);
fg=f(:, :, 2);
fb=f(:, :, 3);
figure
subplot(131),imshow(fr),title('Red');
subplot(132),imshow(fg),title('Green');
subplot(133),imshow(fb),title('Blue');

hsi=rgb2hsi(f);
fh=hsi(:, :, 1);
fs=hsi(:, :, 2);
fi=hsi(:, :, 3);
figure
subplot(131),imshow(fh),title('Hue');
subplot(132),imshow(fs),title('Saturation');
subplot(133),imshow(fi),title('Intensity');

fr5=fspecial('average',[5 5]);
g1=imfilter(fr, fr5);
figure,imshow(g1);
fg5=fspecial('average',[5 5]);
g2=imfilter(fg, fg5);
figure,imshow(g2);
fb5=fspecial('average',[5 5]);
g3=imfilter(fb, fb5);
figure,imshow(g3);
rgb=cat(3, g1, g2, g3);
figure,imshow(rgb );


h5=fspecial('average',[5 5]);
g5=imfilter(fi, h5);
figure,imshow(g5);
fii=cat(3, fr, fg, g5);
figure,imshow(fii);
re=rgb-fii;
figure,imshow(re);
figure,imshow(imsubtract( rgb, re), []);

x=0;
for k=1:20
    x=1/k*sin(k*pi/2)*cos(k*pi*t/2);
end
plot(x);


x1=1:20;
y1=1/k*sin((k*pi)/2)*((k*pi*x1)/2);
subplot(1,1,1),plot(x1, y1),title('BRENDA')











