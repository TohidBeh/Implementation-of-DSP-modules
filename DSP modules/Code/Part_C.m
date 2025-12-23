clearvars
close all
clc


td = -4:1/10:4;
x_d = sinc(td) .^ 2;

L_2 = 2;
L_4 = 4;

omega = linspace(-pi, pi, 100000);
X_d = DTFT(x_d, 1, length(x_d), omega);


xd_expanded1 = Expander(x_d, L_2);
X_expanded1 = DTFT(xd_expanded1, 1, length(xd_expanded1), omega);
xd_expanded2 = Expander(x_d, L_4);
X_expanded2 = DTFT(xd_expanded2, 1, length(xd_expanded2), omega);


figure;
subplot(3,1,1);
plot(omega, abs(X_d));
xlabel("freq");
ylabel("Abs X_d");


subplot(3,1,2);
plot(omega, abs(X_expanded1), 'r');
xlabel("freq");
ylabel("Abs X_d");

subplot(3,1,3);
plot(omega, abs(X_expanded2), 'b');
xlabel("freq");
ylabel("Abs X_d");


figure(2);
subplot(3,1,1);
plot(omega, angle(X_d));
xlabel("freq");
ylabel("Phase X_d");



subplot(3,1,2);
plot(omega, angle(X_expanded1), 'r');
xlabel("freq");
ylabel("Phase X_d");



subplot(3,1,3);
plot(omega, angle(X_expanded2), 'b');
xlabel("freq");
ylabel("Phase X_d");


