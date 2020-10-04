%% Signal strength
clear all

d = [2 3 4 8 12.2 20 30 40 50 60 70 80 90 100 110 120 130];

I = [0.9 1 0.96 0.78 0.81 0.81 0.68 0.52 0.46 0.38 0.31 0.28 0.26 0.24 0.2 0.18 0.16]*30;

err = [0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05]*30;

loglog(d,I,'-- bo')
xlabel('Distance [cm]')
ylabel('Current [mA]')
hold on
errorbar(d,I,err, '.r')
xlim([1.9 140])
ylim([3 32])
legend('Measurements','Errorbars')

%% Antenna diagram
clear all

a = 19.3/100;      % width of horn antenna
l = 0.5*10^(-3);     % wavelength
I0 = 0.62*30;  

theta = [0 5 10 15 20 25 30]*pi/180; % Measured angle

I = [0.62 0.59 0.52 0.39 0.28 0.2 0.15]*30; % Measured signal intensity
Iun1 = I-0.05*30;  % Uncertanty range of measurements
Iun2 = I+0.05*30;  %

% Formula for intensity destribution 
%N = length(theta);
%for i = 1: N
    %B = 2*pi*a/l * sin(theta(i)); 
    %Ifml(i) = I0*( sin(B/2)/(B/2) )^2*30;
%end
%

polarplot(theta,I,'-o');
hold on
polarplot(theta,Iun1,'--r');
polarplot(theta,Iun2,'--r');
%polarplot(theta,Ifml,'g');
thetalim([0 35])
%label('Intensity I(theta)')
%legend('Measured data', '')

%% Estimate wavelength through diffraction

theta = [-40 -35 -30 -25 -20 -15 -10 -5 0 5 10 15 20 25 30 35 40]*pi/180; % Measured angle

I = [0.05 0.06 0.08 0.15 0.13 0.08 0.14 0.23 0.26 0.23 0.17 0.11 0.19 0.18 0.1 0.07 0.04]*30;

polarplot(theta,I,'-o');
thetalim([-45 45])

%% Estimate wavelength through reflection
clear all

x = [0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2 2.2 2.4 2.6 2.8 3 3.2 3.4 3.6 3.8 4 4.2 4.4 4.6 4.8 5];
I = [0.11 0.14 0.28 0.39 0.84 0.49*3 0.58*3 0.13*3 0.06*3 0.12*3 0.18*3 0.19*3 0.44*3 0.69*3 0.25*3 0.03*3 0.1*3 0.13*3 0.16*3 0.34*3 0.6*3 0.3*3 0.03*3 0.14*3 0.18*3 0.16*3];

t = 0:0.05:5;
s = 1 + sin(2*pi*t/(1.5) - pi);

plot(x,I,'-o')
hold on
plot(t,s,'--k')
xlabel('Distance x [cm]')
ylabel('Signal strength [mA]')
legend('Measured data','y=1+sin(2\pix/(1.5)-\pi)')
ylim([0 2.1])

%% Polarisasjon
clear all

theta = [0 10 20 30 40 50 60 70 80 90];
I = [0.45 0.4 0.42 0.39 0.35 0.27 0.21 0.13 0.06 0.01]*30;
err = [0.02 0.02 0.02 0.02 0.02 0.02 0.02 0.02 0.02 0.02]*30;

plot(theta,I,'-o')
hold on
errorbar(theta,I,err, '.r')
xlabel('Angle axis \theta^{o}')
ylabel('Signal strength [mA]')
ylim([-0.5 14.5])

%% Brewster-vinkelen
clear all

theta = [20 25 30 35 40 45 50 55 60 65 70 75];
I1 = [0.03 0.03 0.03 0.02 0.02 0.02 0.02 0.03 0.05 0.05 0.18 0.3]*30; % 90 degrees
I2 = [0.06 0.08 0.03 0.02 0.02 0.06 0.05 0.03 0.03 0.05 0.08 0.11]*30; % 0 degrees

plot(theta, I2,'--')
hold on
plot(theta,I1)
xlabel('Angle of incidence \theta_i [^{o}]')
ylabel('Measured reflection [mA]')
legend('Electrical polarization 0^{o}', 'Magnetic polarization 90^{o}')