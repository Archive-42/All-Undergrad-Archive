%Original Signal
t = -100:0.01:100;
y=cos(.1*t);
subplot(211),plot(t,y)
plot(t,y,'linewidth',1.5)
xlabel('t')
ylabel('x(t)')
title('Original Signal')
axis([-100 100 -4 4])
grid

%Even Signal
t = -100:0.01:100;
yeven=cos(.1*t);
subplot(212),plot(t,yeven)
plot(t,yeven,'linewidth',1.5)
xlabel('t')
ylabel('x(t)')
title('Even Signal')
axis([-100 100 -4 4])
grid