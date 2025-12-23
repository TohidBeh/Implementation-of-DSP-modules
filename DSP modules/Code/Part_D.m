clearvars
close all
clc

fc = 10;
Fs = 20;
L = 2;
t_c = 0 : 0.00001 : 1-0.00001;
s_c = cos(2*pi*fc*t_c);
t_d = 0:1/Fs:1;
s_d = cos(2*pi*fc*t_d);

figure(1);
subplot(2,1,1);
plot(t_c, s_c);
xlabel("t(contineous)");
ylabel("s_c(n)");

subplot(2,1,2);
stem(t_d, s_d, 'b');
xlabel("t(discrete)");
ylabel("s_d[n]");

figure(2);

for mode = 1:3
    x_e = Expander(s_d, L);
    x_i = interpolator(x_e, L, mode);
    t_interpolated = 0:1/(length(x_i)-1):1;
    plot(t_interpolated, x_i);
    xlabel("time");
    ylabel("s(t)"); 
    hold on;
end