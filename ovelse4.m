ax = gca

t = 15:1:45;

plot(time1, temp1)
ax.YTick = t;
ylabel('Temperature[celsius]')
xlabel('Time[s]')
grid on
%%
ax = gca

t = 15:1:45;
time2 = test2(:,1);
temp2 = test2(:,2);

plot(time2, temp2)
ax.YTick = t;
ylabel('Temperature[celsius]')
xlabel('Time[s]')
grid on
%%
ax = gca

t = 15:1:45;
time3 = test3(:,1);
temp3 = test3(:,2);

plot(time3, temp3)
ax.YTick = t;
ylabel('Temperature[celsius]')
xlabel('Time[s]')
grid on
