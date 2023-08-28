clear all
clc
ImJPG=imread('cartoon1.jpeg')
[m,n,l]=size(ImJPG);

GrayMatrix=[1/3 1/3 1/3; 1/3 1/3 1/3; 1/3 1/3 1/3];
SepiaMatrix=[0.393 0.769 0.189; 0.349 0.686 0.168; 0.272 0.534 0.131];
IdentityMatrix=[1 0 0; 0 1 0; 0 0 1];
RedChannel=[1 0 0; 0 0 0; 0 0 1];
GreenChannel=[0 0 0; 0 1 0; 0 0 0];
BlueChannel=[0 0 0; 0 0 0; 0 0 1];

for i=1:m
for j= 1:n
PixelColor=reshape(double(ImJPG(i,j,:)),3,1);
ImJPG_Gray(i,j,:)=uint8(GrayMatrix*PixelColor);
ImJPG_Sepia(i,j,:)=uint8(SepiaMatrix*PixelColor);
ImJPG_Identity(i,j,:)=uint8(IdentityMatrix*PixelColor);
Red(i,j,:)=uint8(RedChannel*PixelColor);
Green(i,j,:)=uint8(GreenChannel*PixelColor);
Blue(i,j,:)=uint8(BlueChannel*PixelColor);
end;
end;

figure;
subplot(1,2,1),imshow(ImJPG),subplot(1,2,2),imshow(ImJPG_Identity)
figure;
subplot(1,3,1),imshow(Red),subplot(1,3,2),imshow(Green),subplot(1,3,3),imshow(Blue)
figure;
subplot(1,2,1),imshow(ImJPG),subplot(1,2,2),imshow(ImJPG_Gray)
figure;
subplot(1,2,1),imshow(ImJPG),subplot(1,2,2),imshow(ImJPG_Sepia)
