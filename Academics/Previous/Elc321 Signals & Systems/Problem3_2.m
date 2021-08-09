
t = -100:0.01:100;
y=cos(.1*t);
subplot(211),plot(t,y)
stem(t,y,'linewidth',1.5)
xlabel('t')
ylabel('x(t)')
title('Original')
axis([-100 100 -4 4])
grid


t = -100:0.01:100;
yeven=cos(.1*t);
subplot(212),plot(t,yeven)
stem(t,yeven,'linewidth',1.5)
xlabel('t')
ylabel('x(t)')
title('Even')
axis([-100 100 -4 4])
grid