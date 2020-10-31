f = 44100;
y = audioread('1.mp3');
p = audioplayer(y,f);
num = [1,zeros(1,7000),0.9];
den = [1];
x = filter(num,den,y);
p1 = audioplayer(x,f);

% this part of the code helps to reverse the audio file and we are using 
% the flipud fuction because the audio file is stored in the form of a
% coloum matrix
rev = flipud(y);
y1 = audioplayer(rev,f);

%play(p1) generators the echo and play(y1) plays the reverse of the audio
%file...
%should add the audio wave generator and think others....
