t = -80:0.5:80;
y = 5 * sin(15 * t - pi / 3) + 2 * sin(7 * t);
plot(t, y)
xlabel('t')
ylabel('x(t)')
title('Number 5 plot')
axis([-10 10 -8 9])
grid;
