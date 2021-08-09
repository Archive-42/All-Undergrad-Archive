t = -80:0.01:80;
y = cos(.1 * t);
subplot(211), plot(t, y)
stem(t, y, 'linewidth', 1.5)
xlabel('t')
ylabel('x(t)')
title('Original plot')
axis([-80 80 -5 5])
grid

t = -80:0.01:80;
yeven = cos(.1 * t);
subplot(212), plot(t, yeven)
stem(t, yeven, 'linewidth', 1.5)
xlabel('t')
ylabel('x(t)')
title('Even graph')
axis([-80 80 -5 5])
grid;
