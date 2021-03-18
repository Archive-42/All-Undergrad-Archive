t = [-2 -1 -1 0 0 1 2 2 3]
x = [0 0 -1 -1 0 0.5 1 0 0]
subplot(211), plot(t, x)
plot(t, x, 'linewidth', 1.5)
xlabel('t')
ylabel('x(t)')
title('Original');
axis([-3 3 -1 1]);
grid;
subplot(212)
z = ((3 * t) - 6);
plot(z, x, 'linewidth', 1.5)
xlabel('z')
ylabel('x(z)')
title('1.a');
axis([-3 3 -1 1])
grid;
subplot(213)
b = ((-4 * x) + 2);
plot(t, b, 'linewidth', 1.5)
xlabel('t')
ylabel('Q(b)')
title('1.b');
axis([-3 3 -1 1])
grid;
