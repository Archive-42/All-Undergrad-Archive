t = [-5:.01:5]
u = ones(size(t)) .* (t >= 0);
u1 = -(ones(size(t)) .* (t >= 1));
u2 = (ones(size(t)) .* (t <= -1));
subplot(211)
plot(t, u1 + u2, 'linewidth', 2)
xlabel('t')
ylabel('x(t)')
title('4.2 Original plot')
axis([-4 4 -4 4])
grid;

subplot(212)
plot(t, u1 + u2, 'linewidth', 2)
xlabel('t')
ylabel('x(t)')
title('Odd signal')
axis([-4 4 -4 4])
grid;
