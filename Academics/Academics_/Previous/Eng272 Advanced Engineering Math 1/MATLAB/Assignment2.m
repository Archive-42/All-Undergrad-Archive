t = 0:0.0001:20;
y = (-3.75) * exp(-t) + (0.75) * (0.75) * exp(-5 * t) + 2;
plot(t, y, 'linewidth', 2)
axis([0 20 -2.5 2.5])
title('3.c')
xlabel('time')
ylabel('Y(t)')
grid
