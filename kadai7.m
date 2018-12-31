% 課題7　ダイナミックレンジの拡大
% 画素のダイナミックレンジを０から２５５にせよ． 
% 下記はサンプルプログラムである． 
% 課題作成にあたっては「Lenna」以外の画像を用いよ

ORG = imread('outdoor_101_rika.jpg'); %画像の読み込み
ORG = rgb2gray(ORG); %白黒濃淡画像に変換 関数関数
imagesc(ORG) %カラーマップ（グレー）。カラーバー％画像の表示一時停止
imhist(ORG); %濃度ヒストグラムを生成、表示一時停止
ORG = double(ORG)
mn = min(ORG(:)); %濃度値の最小値を算出
mx = max(ORG(:)); %濃度値の最大値を算出
ORG =(ORG - mn)/(mx - mn)*255
imagesc(ORG) %カラーマップ（グレー）。カラーバー％画像の表示一時停止
ORG = uint8(ORG); %この行について考察せよ
imhist(ORG);