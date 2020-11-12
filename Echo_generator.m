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
% the flipud fuction because the audio file is stored in the form of a
% coloum matrix
rev = flipud(y);
y1 = audioplayer(rev,f);

%play(p1) generators the echo and play(y1) plays the reverse of the audio

[c, fs] = audioread("s0.mpeg"); % Gives the sampling frequency amplitudes of audio file
[d, fs1] = audioread("s1.mpeg");

c = c(:,1); 
d = d(:,1);

N  = length(c);
N1 = length(d);
t = (0:N-1)/fs;
t1 = (0:N1-1)/fs1;
at = N/fs;
at1 = N1/fs1;

plot(t,c)
grid on
xlabel('Time (s)');
ylabel('Amplitude');
title('First audio signal');
plot(t1,d)
xlabel('Time (s)');
ylabel('Amplitude');
title('Second audio signal');

%stats information
maxValue = max(c); % max value of the amplitude in the signal 1
maxValue1 = max(d); % max value of the amplitude in the signal 2
minValue = min(c); % min value of the amplitude in the signal 1
minValue1 = min(d); % min value of the amplitude in the signal 2
meanValue = mean(c); % mean value of the signal 1
meanValue1 = mean(d); % mean value of the signal 2
stdValue = std(c); % standard deviation of the signal 1
stdValue1 = std(d); % standard deviation of the signal 2

spectrogram(c, 1024, 512, 1024, fs, 'yaxis')
xlabel('Time (s)');
ylabel('Amplitude');
title('Spectrogram first audio signal');
spectrogram(d, 1024, 512, 1024, fs, 'yaxis')
xlabel('Time (s)');
ylabel('Amplitude');
title('Spectrogram of second audio signal');


