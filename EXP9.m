clc
clear all
close all

symbol = 1:5;

p = [0.45 0.15 0.20 0.11 0.09];

[dict, avglen] = huffmandict(symbol, p);

samplecode = dict{5,2};

dict{1,:}
dict{2,:}
dict{3,:}
dict{4,:}
dict{5,:}

hcode = huffmanenco(symbol, dict);

dhsig = huffmandeco(hcode, dict);

disp('encoded msg:');
disp(hcode);

disp('decoded msg:');
disp(dhsig);

code_length = length(hcode)
