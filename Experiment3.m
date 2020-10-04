clear all

I = [775 769 763 752 730 720 438 306.5 235 190.7 138.6 89.5]*10^(-6);

V = [0.93 0.923 0.915 0.902 0.876 0.863 0.526 0.368 0.282 0.228 0.166 0.107];

N = length(I);

% Beregner delta
delta = N*( sum(I.^2) )-( sum(I) ).^2;

% Stigningstall 
A = ( N*(sum(I.*V)) - sum(I)*sum(V) )/delta;

% Start verdi y = Ax + B
B = (sum(I.^2)*sum(V) - sum(I)*sum(I.*V))/delta;

Y = A*I + B;

% Usikkerheten i målinger av y
sigmaY = sqrt( (sum( (V - A*I - B).^2 ))/N );

% Usikkerheten i stigningstall
sigmaA = N*sigmaY/delta;

err = [1.59 1.542 1.53 1.508 1.5 1.48 0.88 0.617 0.51 0.3818 0.2776 0.183]*10^(-6);
err2 = [4.67 4.617 4.577 4.53 4.4 4.317 2.63 1.84 1.43 1.16 0.85 0.537]*10^(-3);

%err = ones(1, length(Y))*sigmaA*10^(-6);
%err2 = ones(1, length(Y))*(sigmaY-B );

plot(I, Y, 'g')
xlabel('Strøm[A]')
ylabel('Spenning[V]')
hold on
loglog(I,V,'ob')
errorbar(I,Y,err2, '.r')
herrorbar(I, Y, err, '.r')
legend('Minste kvadrats metode','Logaritmiske', 'Feilflagg')
%%
clear all

I = [89.5*10^(-6), 438*10^(-6), 720*10^(-6), 769*10^(-6), 775*10^(-6), 769*10^(-6), 763*10^(-6), 752*10^(-6), 730*10^(-6), 691*10^(-6), 306.5*10^(-6), 235*10^(-6), 190.7*10^(-6), 138.6*10^(-6)];

V = [0.107, 0.526, 0.863, 0.923, 0.93, 0.923, 0.915, 0.902, 0.876, 0.829, 0.368, 0.282, 0.228, 0.166];

N = length(I);

% Beregner delta
delta = N*( sum(I.^2) )-( sum(I) ).^2;

% Stigningstall 
A = ( N*(sum(I.*V)) - sum(I)*sum(V) )/delta;

% Start verdi y = Ax + B
B = (sum(I.^2)*sum(V) - sum(I)*sum(I.*V))/delta;

Y = A*I + B;

% Usikkerheten i målinger av y
sigmaY = (sum( (V - A*I - B).^2 ))/N;

% Usikkerheten i stigningstall
sigmaA = N*sigmaY/delta;

err1 = ones(1,length(Y))*sigmaY;
err2 = ones(1,length(Y))*sigmaY;
err3 = ones(1,length(Y))*sigmaY;
err4 = ones(1,length(Y))*sigmaY;

errorbar(I,Y,err1, 'vertical', '.r')
xlabel('Strøm[A]')
ylabel('Spenning[V]')

%%
clear all

I = [89.5*10^(-6), 438*10^(-6), 720*10^(-6), 769*10^(-6), 775*10^(-6), 769*10^(-6), 763*10^(-6), 752*10^(-6), 730*10^(-6), 691*10^(-6), 306.5*10^(-6), 235*10^(-6), 190.7*10^(-6), 138.6*10^(-6)];

V = [0.107, 0.526, 0.863, 0.923, 0.93, 0.923, 0.915, 0.902, 0.876, 0.829, 0.368, 0.282, 0.228, 0.166];

loglog(I,V,'o')
xlabel('Strøm')
ylabel('Spenning')

%%
clear all

I = [89.5*10^(-6), 438*10^(-6), 720*10^(-6), 769*10^(-6), 775*10^(-6), 769*10^(-6), 763*10^(-6), 752*10^(-6), 730*10^(-6), 691*10^(-6), 306.5*10^(-6), 235*10^(-6), 190.7*10^(-6), 138.6*10^(-6)];

V = [0.107, 0.526, 0.863, 0.923, 0.93, 0.923, 0.915, 0.902, 0.876, 0.829, 0.368, 0.282, 0.228, 0.166];

N = length(I);
 
% Beregner delta
delta = N*( sum(I.^2) )-( sum(I) ).^2

% Stigningstall 
A = ( N*(sum(I.*V)) - sum(I)*sum(V) )/delta


Vmax = max(V);
Vmin = min(V);

Imax = max(I);
Imin = min(I);


stigningstalet = (Vmax-Vmin)/(Imax-Imin)

%%
clear all

I = [89.5*10^(-6), 438*10^(-6), 720*10^(-6), 769*10^(-6), 775*10^(-6), 769*10^(-6), 763*10^(-6), 752*10^(-6), 730*10^(-6), 691*10^(-6), 306.5*10^(-6), 235*10^(-6), 190.7*10^(-6), 138.6*10^(-6)];

V = [0.107, 0.526, 0.863, 0.923, 0.93, 0.923, 0.915, 0.902, 0.876, 0.829, 0.368, 0.282, 0.228, 0.166];

N = length(I);
 
% Beregner delta
delta = N*( sum(I.^2) )-( sum(I) ).^2;

% Stigningstall 
A = ( N*(sum(I.*V)) - sum(I)*sum(V) )/delta;

% Start verdi y = Ax + B
B = (sum(I.^2)*sum(V) - sum(I)*sum(I.*V))/delta;

% Usikkerheten i målinger av y
sigmaY = (sum( (V - A*I - B).^2 ))/N;

% Usikkerheten i stigningstall
sigmaA = N*sigmaY/delta;

%%
clear all

x = 1:10;
y = x.*2;
e = std(y)/10*ones(size(x)); % assuming e as error
plot(x,y,'ro')
hold on
errorbar(x,y,e)
