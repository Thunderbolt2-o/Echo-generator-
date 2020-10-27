%this code is used to generate echo
f = 44100;
y = audioread('1.mp3');
p = audioplayer(y,f);
num = [1,zeros(1,7000),0.9];
den = [1];
x = filter(num,den,y);
p1 = audioplayer(x,f);