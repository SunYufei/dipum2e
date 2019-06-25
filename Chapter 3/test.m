f = imread('Fig0323(a).tif');
subplot(131), imshow(f);

Hrecpass = recnotch('pass', 'vertical', M, N, 3, 15, 15);
interference = dftfilt(f, Hrecpass);

subplot(132), imshow(fftshift(Hrecpass));

interference = gscale(interference);
subplot(133), imshow(interference);
