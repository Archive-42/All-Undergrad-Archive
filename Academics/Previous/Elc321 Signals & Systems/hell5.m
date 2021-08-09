t=-100:0.5:100;
y=5*sin(15*t-pi/3)+2*sin(7*t);
plot(t,y)
xlabel('t')
ylabel('x(t)')
title('#5')
axis([-50 50 -8 8])
grid;