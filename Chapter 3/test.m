f = imread('Fig0309(a).tif');
f = tofloat(f);
F = fft2(f);
S = fftshift(log(1 + abs(F)));
subplot(121), imshow(f);
subplot(122), imshow(S, []);
