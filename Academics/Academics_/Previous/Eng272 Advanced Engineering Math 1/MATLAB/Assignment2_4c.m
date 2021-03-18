t = 0:0.01:15;
y = (-3.75) * exp(-t) + (0.75) * (0.75) * exp(-5 * t) + 2;
plot(t, y, 'linewidth', 3)
axis([0 10 -2.5 2.5])
title('Problem 4 part c')
xlabel('time')
ylabel('Y(t)')
grid
