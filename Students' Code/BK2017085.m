chaka=imread('lenna.tif');
figure,imshow(chaka);

chakaR = chaka(:,:,1);
chakaG = chaka(:,:,2);
chakaB = chaka(:,:,3);

figure
subplot(131), imshow(chakaR), title('Red');
subplot(132), imshow(chakaG), title('Green');
subplot(133), imshow(chakaB), title('Blue');


 chakahsi=rgb2hsi(chaka);
 chakaH=chakahsi(:, :, 1);
 chakaS=chakahsi(:, :, 2);
 chakaI=chakahsi(:, :, 3);
figure
 subplot(131), imshow(chakaH), title('Hue');
 subplot(132), imshow(chakaS), title('Saturation');
 subplot(133), imshow(chakaI), title('Intensity');
 
 chakaR1 = fspecial('average',[5 5]);
 chakaRR = imfilter(chakaR, chakaR1);
 
 
 chakaB1 = fspecial('average',[5 5]);
 chakaBB = imfilter(chakaB, chakaB1);
  
 
 chakaG1 = fspecial('average',[5 5]);
 chakaGG = imfilter(chakaG, chakaG1);
 
 
 chakaRGB1 = cat(3,chakaRR,chakaGG,chakaBB);
 figure, imshow(chakaRGB1);
 
  chakaHs = fspecial('average',[5 5]);
 chakaHH = imfilter(chakaH, chakaHs);
 
 chakaSs = fspecial('average',[5 5]);
 chakaSS = imfilter(chakaS, chakaSs);
 
 chakaIs = fspecial('average',[5 5]);
 chakaII = imfilter(chakaI, chakaIs);
 
 chakaHSIs=  cat(3,chakaHH,chakaSS,chakaII);
 figure, imshow(chakaHSIs);
 
  
 
 