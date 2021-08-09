t= -100:0.125:100;
y= cos(pi*t);
subplot(411),plot(t,y)
xlabel('t')
ylabel('x(t)')
title('#6.1')
axis([-8 8 -2 2])
grid;

subplot(412),stem(t,y,'linewidth',1.5)
xlabel('t')
ylabel('x[t]')
title('#6.2')
axis([-4 4 -2 2])
grid;

t=-100:0.13:100;
y=cos(pi*t)
subplot(413),plot(t,y)
xlabel('t')
ylabel('x(t)')
title('#6.3')
axis([-8 8 -2 2])
grid;

subplot(414),stem(t,y,'linewidth',1.5)
xlabel('t')
ylabel('x(t)')
title('#6.4')
axis([-4 4 -2 2])
grid;