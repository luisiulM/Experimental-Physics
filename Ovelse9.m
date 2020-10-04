%% Oppgave 1: Tidskonstanten i en RC
clear all

t = [0 1 2 3 4 5 6 7 8 9 11 13 15 17 19 21 23 25 27 29 31 34 40 46 52];

V = [8.05 7.87 7.22 6.82 6.08 5.95 5.13 4.62 4.33 3.41 3.13 2.59 2.14 1.81 1.54 1.22 1.07 0.92 0.79 0.65 0.514 0.305 0.19 0.11 0.08];

N = length(t);

V1 = log10(V);

% Beregner delta
delta = N*( sum(t.^2) )-( sum(t) ).^2;

% Stigningstall 
A = ( N*(sum(t.*V1)) - sum(t)*sum(V1) )/delta;

% Start verdi y = Ax + B
B = (sum(t.^2)*sum(V1) - sum(t)*sum(t.*V1))/delta;

Y = A*t + B;

% Usikkerheten i målinger av y
sigmaY = sqrt( (sum( (V1 - A*t - B).^2 ))/N );

% Usikkerheten i stigningstall
sigmaA = N*sigmaY/delta;

%err = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
%errh1 = [4.026 3.936 3.62 3.42 3.05 3 2.566 2.32 2.166 1.706 1.566 1.296 1.08 0.906 0.78 0.62 0.536 0.47 0.396 0.326 0.258 0.306 0.2 0.12 0.1].*10.^(-3);
%dh = V*sqrt( (errh1/V)^2 + (0.5 * 10^(-3))^2 )
%err2 = log10(errh1);

errY1 = Y+sigmaY;
errY2 = Y-sigmaY;

plot(t,10.^Y,'g')
xlabel('Time [s]')
ylabel('Voltage [V]')
hold on
plot(t,10.^V1,'ob')
plot(t,10.^errY1,'--r', t,10.^errY2,'--r')
%errorbar(t,V1,err2, '.r')
%herrorbar(t,V1, err, '.r')
legend('Least Squares Method', 'y = 10^{log( V/ V_{ref})}', 'Uncertianty range of Least Squares Method')
xlim([0 53])
%ylim([-1.2 1])
%% Oppgave 2: Lavpassfilter
clear all

f = [100 300 1000 1500 2000 2500 3000 10000 30000 100000];

V = [4.98/5.03 4.84/5.03 4/4.94 3.38/4.8 2.85/4.86 2.45/4.8 2.13/4.8 0.76/4.78 0.3/4.78 0.073/4.78];

semilogx(f,V)
xlabel('Frequency [Hz]')
ylabel('Voltage ratio V_{out}/ V_{in}')

%% Oppgave 3: Hoypassfilter
clear all

f = [100 300 400 700 1000 1300 1600 3000 10000 30000 100000];

V = [0.4/5.03 0.96/5.03 1.29/5.03 2.05/5.03 2.65/4.94 3.14/4.88 3.5/4.9 4.26/4.8 4.64/4.72 4.74/4.78 4.76/4.78];

semilogx(f,V)
xlabel('Frequency [Hz]')
ylabel('Voltage ratio V_{out}/ V_{in}')
