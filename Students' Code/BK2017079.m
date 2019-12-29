f = imread('lenna.tif');
figure, imshow(f);

fr = f(:, :, 1);
fg = f(:, :, 2);
fb = f(:, :, 3);

 figure, subplot(131),imshow(fr), title('Red'),
 subplot(132),imshow(fg), title('Green'),
 subplot(133),imshow(fb), title('Blue');
 
hsi =rgb2hsi(f);
 
h = hsi(:, :, 1);
s = hsi(:, :, 2);
i = hsi(:, :, 3);

 figure, subplot(131),imshow(h), title('Hue'),
subplot(132),imshow(s), title('Saturation'),
 subplot(133),imshow(i), title('Intensity');
 
 w5 = fspecial('average', [5 5]);
 gr = imfilter(fr, w5);
 gg = imfilter(fg, w5);
 gb = imfilter(fb, w5);
 g = cat(3, gr, gg, gb);
 figure, imshow(g);

 new_ = rgb2hsi(g);
 new_ii =new_(:, :, 3);
 new_iii = imfilter(new_ii, w5);
 
 
new_image = cat(3, h, s, new_iii);
disp_im = hsi2rgb(new_image);
figure, imshow(disp_im);
 
disp_red = disp_im(:, :, 1);
%result = gr - disp_im;



 k=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
 t = -5:5;
 x = (1 / k) * sin((k*pi) / 2).* cos((k*pi*t) / 2); 
 figure, plot(t, x),
 title('Adrian Nare'),
 xlabel('t');
 ylabel('x');
 legend('x(t)');