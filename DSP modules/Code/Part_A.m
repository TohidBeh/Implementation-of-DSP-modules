
%________________________CA4__________________________
%____________ TOHID _ BEHESHTI _ 810100100 ____________
%______________________ PART_A _________________________

clearvars
close all
clc


n1 = -10:1:20;
x1_n = (0.8) .^ n1;

omega = linspace(-pi, pi, 100000);


X1 = DTFT(x1_n, -10, 20, omega);
figure(1);
subplot(2,1,1);
plot(omega, abs(X1));
xlabel("freq");
ylabel("ABS X1");

subplot(2,1,2);
plot(omega, angle(X1));
xlabel("freq");
ylabel("Phase X1");



n2 = 0:1:40;
x2_n = ones(size(n2));

X2 = DTFT(x2_n, 0, 40, omega);


figure(2);
subplot(2,1,1);
plot(omega, abs(X2));
xlabel("freq");
ylabel("ABS X2");

subplot(2,1,2);
plot(omega, angle(X2));
xlabel("freq");
ylabel("Phase X2");
