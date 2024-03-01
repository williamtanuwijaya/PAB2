X = imresize(imread('X.png'), [222 265]);
X = rgb2gray(X);
X1 = im2bw(X);
Y = imread('Y.png');
Y = rgb2gray(Y);
Y1 = im2bw(Y);
Z = bitor(X1, Y1);
imshow(Z);