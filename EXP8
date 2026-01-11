clc
clear all
close all

m = 16;
k = log2(m);
n = 9e3;
nsamp = 1;

x = randi([0 1], n, 1);

figure
stem(x(1:20), 'filled')
title('bit sequence')
xlabel('bit index')
ylabel('bit amplitude')

xsym = bi2de(reshape(x, k, length(x)/k).', 'left-msb');

figure
stem(xsym(1:10))
title('symbol plot')
xlabel('symbol index')
ylabel('symbol amplitude')

y = qammod(xsym, m, 'UnitAveragePower', true);
vtx = y;

ebno = 10;
snr = ebno + 10*log10(k) - 10*log10(nsamp);

vrx = awgn(vtx, snr, 'measured');

figure
scatterplot(y)

figure
scatterplot(vrx, 30)
