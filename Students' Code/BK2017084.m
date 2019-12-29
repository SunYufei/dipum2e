sc=imread('lenna.tif');
figure, imshow(sc);

r=sc(:,:,1);
g=sc(:,:,2);
b=sc(:,:,3);

figure
subplot(131), imshow(r), title('Red');
subplot(132), imshow(g), title('Green');
subplot(133), imshow(b), title('Blue');

hsi=rgb2hsi(sc);
h=hsi(:,:,1);
s=hsi(:,:,2);
i=hsi(:,:,3);

figure
subplot(131), imshow(h), title('Hue');
subplot(132), imshow(s), title('Saturation');
subplot(133), imshow(i), title('intensity');

w3=fspecial('average',[5 5]);
g1=imfilter(r, w3);
g2=imfilter(g, w3);
g3=imfilter(b, w3);

rgb1=cat(3,g1,g2,g3);

figure, imshow(rgb1);

g4=imfilter(i, w3);

%not sure about this remove comments
%rr=h(:,:,1);
%gg=s(:,:,2);
%bb=g4(:,:,3);

%rgb2=cat(3,rr,gg,bb);



figure, imshow(rgb2);
t= -5:5;
for k=1:20
    x= 1/k*sin(k*pi)/2*cos(k*pi*t)/2;
end
plot(t, x);





    





