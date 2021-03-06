% 課題２　階調数と疑似輪郭
% ２階調，４階調，８階調の画像を生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ

ORG = imread('outdoor_101_rika.jpg');
ORG = rgb2gray(ORG);
imagesc(ORG)

% 2階調画像の生成
IMG = ORG>128; 
imagesc(IMG)


% 4階調画像の生成
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG)

% 8階調画像の生成
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>128;
IMG3 = ORG>160;
IMG4 = ORG>192;
IMG5 = ORG>224;
IMG6 = ORG>256;
IMG = IMG0 + IMG1 + IMG2 +IMG3 +IMG4 +IMG5 +IMG6;