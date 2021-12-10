I = imread('imagename.jpg');
figure(1);
image(I)

figure(2);
decimage = decimateimg(I, 4);
image(decimage)
imwrite(decimage,'dec4imagename.jpg')