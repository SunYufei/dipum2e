%Question one
f = imread('lenna.tif');
figure,imshow(f);
%question two
r = f(:,:,1);
g = f(:,:,2);
b = f(:,:,3);
figure
subplot(131),imshow(r),title('Red');
subplot(132),imshow(g),title('Green');
subplot(133),imshow(b),title('Blue');
%question three
hsi = rgb2hsi(f);
h = hsi(:,:,1);
s = hsi(:,:,2);
i = hsi(:,:,3);
figure
subplot(131),imshow(h),title('Hue');
subplot(132),imshow(s),title('Saturation');
subplot(133),imshow(i),title('Intensity');
%question four
smoothing = fspecial('average',[5 5]);
rsmooth = imfilter(r,smoothing);
gsmooth = imfilter(g,smoothing);
bsmooth = imfilter(b,smoothing);
rgb_smooth = cat(3,rsmooth,gsmooth,bsmooth);
figure,imshow(rgb_smooth);
%question five A
ismooth = imfilter(i,smoothing);
hsi_rgb_smooth = cat(3,h,s,ismooth);
rgb = hsi2rgb(hsi_rgb_smooth);
figure,imshow(rgb);

%question five B
%minus = rgb_smooth - rgb;
%fc = minus(:,:,1);
%figure,imshow(fc);

%question six
t = -5:5;
x = 0;
p = pi/2;
c = pi*t/2;
for k =1:20
    x = x + ((1/k)*(sin(p*k)) * cos((c*k)));
end
figure
plot(t,x)
title('Austin Madangwa BK2017073')
xlabel('t')
ylabel('x')
legend('x = x(t)')