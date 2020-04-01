clear all
I=imread("paper_2.jpg");
[B,x,y]=roipoly(I);
I=I.*uint8(B);

[X,Y]=change_xy(x,y);
u=[0 0 1;210*5 0 1;0 297*5 1;210*5 297*5 1];%射影変換後の座標の行列
x_1=[X(1) Y(1) 1;X(2) Y(2) 1;X(4) Y(4) 1;X(3) Y(3) 1];%射影変換前の座標の行列

tform = fitgeotrans(x_1(:,1:2),u(:,1:2),'projective');
I_2=imwarp(I,tform);

[J,rect2]=imcrop(I_2);
BW=imbinarize(rgb2gray(J));
BW=uint8(BW).*255;%文字の部分だけくりぬいた行列
J_1=J;
J_1(BW==255)=0;
J=BW+J_1;

imtool(J);

