t = -100:0.125:100;
y = cos(pi * t);
subplot(411), plot(t, y)
xlabel('t')
ylabel('x(t)')
title('Problem 6, sampele=0.125 continious time')
axis([-5 5 -3 3])
grid;

subplot(412), stem(t, y, 'linewidth', 1.5)
xlabel('t')
ylabel('x[t]')
title('problem 6, sample=0.125 discrete time')
axis([-5 5 -3 3])
grid;

t = -80:0.13:80;
y = cos(pi * t)
subplot(413), plot(t, y)
xlabel('t')
ylabel('x(t)')
title('problem 6, sample=0.13 continious time')
axis([-8 8 -2 2])
grid;

subplot(414), stem(t, y, 'linewidth', 1.5)
xlabel('t')
ylabel('x(t)')
title('problem 6, sample=0.13 discrete time')
axis([-5 5 -3 3])
grid;
