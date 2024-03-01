X = uint8([200 100 100; 0 10 50; 50 250 120])
Y = uint8([100 220 230; 45 95 120; 205 100 0])
Z = uint16(X) + uint16(Y)

fmax = max(Z(:))
fmin = min(Z(:))

Za = uint8(255*double(Z - fmin)/double(fmax-fmin))
Zb = imadd(X,Y)
Zc = imsubtract(X,Y)
Zd = imsubtract(Y,X)
Ze = imabsdiff(Y, X)

X = uint8([200 100 100; 0 10 50; 50 250 120])
Y = uint8([100 220 230; 45 95 120; 205 100 0])
Z = uint8([200 160 130; 145 195 120; 105 240 150])

%Za = imadd(X, Y)
%Zb = imadd(Za, Z)
%Ca = imdivide(X, Y)
%Cb = imdivide(Ca, Z)

a = uint16(X) + uint16(Y) + uint16(Z)
Za = uint8(a/3)
Zb = imdivide(imadd(X, imadd(Y, Z)), 3)
Zc = imlincomb(1/3, X, 1/3, Y, 1/3, Z)

I1 = imresize(imread('coins.png'), [256 256]);
I2 = imread('rice.png');
I3 = imadd(I1, I2);
imshow(I3);