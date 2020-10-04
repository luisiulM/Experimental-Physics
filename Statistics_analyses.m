clear all

z2 = [24 24 24 24.5 24.5];

x = z2;
% Standard procedure
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mean value

n = length(x);

mean = sum(x)/n

%% The standard deviation for a measuring point

deviation = sqrt( sum((x - mean).^2)/(n-1) )

%% Error or uncertainty in the mean value

mean_deviation = deviation/n^(1/2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%