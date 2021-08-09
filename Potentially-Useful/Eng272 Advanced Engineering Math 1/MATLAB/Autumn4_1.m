t = -5:1:5;
y = -4 * t;
subplot(211)
plot(t, y, 'linewidth', 1.5)
xlabel('t')
ylabel('x(t)')
title('4.1 Original plot')
axis([-3 3 -4 4])
grid;

y = -4 * t;
subplot(212)
plot(t, y, 'linewidth', 1.5)
xlabel('t')
ylabel('x(t)')
title('Odd signal')
axis([-3 3 -4 4])
grid;
