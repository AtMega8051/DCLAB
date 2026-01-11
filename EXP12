clc
clear all
close all

msg = [1 0 1 1 0 1 0 0];

constraint_length = 3;
generator_polynomials = [7 5];

trellis = poly2trellis(constraint_length, generator_polynomials);

encoded_msg = convenc(msg, trellis);

encoded_msg_noisy = encoded_msg;
encoded_msg_noisy(4) = ~encoded_msg_noisy(4);

traceback_length = 5;
decoded_msg = vitdec(encoded_msg_noisy, trellis, traceback_length, 'trunc', 'hard');

disp('Original Message:');
disp(msg);

disp('Encoded Message:');
disp(encoded_msg);

disp('Noisy Encoded Message:');
disp(encoded_msg_noisy);

disp('Decoded Message:');
disp(decoded_msg);
