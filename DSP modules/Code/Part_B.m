clearvars
close all
clc


td = -4:1/10:4;
x_d = sinc(td) .^ 2;

M_2 = 2;
M_4 = 4;
omega = linspace(-pi, pi, 100000);
X_d = DTFT(x_d, 1, length(x_d), omega);


xd_compressed1 = compresor(x_d, M_2);
X_compressed1 = DTFT(xd_compressed1, 1, length(xd_compressed1), omega);
xd_compressed2 = compresor(x_d, M_4);
X_compressed2 = DTFT(xd_compressed2, 1, length(xd_compressed2), omega);


figure;
subplot(3,1,1);
plot(omega, abs(X_d));
xlabel("freq");
ylabel("Abs X_d");


subplot(3,1,2);
plot(omega, abs(X_compressed1), 'r');
xlabel("freq");
ylabel("Abs X_d");

subplot(3,1,3);
plot(omega, abs(X_compressed2), 'b');
xlabel("freq");
ylabel("Abs X_d");


figure(2);
subplot(3,1,1);
plot(omega, angle(X_d));
xlabel("freq");
ylabel("Phase X_d");



subplot(3,1,2);
plot(omega, angle(X_compressed1), 'r');
xlabel("freq");
ylabel("Phase X_d");


subplot(3,1,3);
plot(omega, angle(X_compressed2), 'b');
xlabel("freq");
ylabel("Phase X_d");

