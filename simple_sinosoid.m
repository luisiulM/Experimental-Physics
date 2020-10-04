clear all

phase = 0; 
f0 = 440; % Hz
fs = 8000; % Hz

t1 = linspace(0,3/f0,500);
n1 = 0:1:3*8000/f0;

xt = @(t) sin(2*pi*f0*t + phase);
xn = @(n) sin(2*pi*(f0/fs)*n + phase);

stem(n1,xn(n1))
ylim([-1 1])
axis off
%%
plot(t1, xt(t1))
axis off

