
t = -1:0.05:1;
y = 2*ones( size(t) ) .* (t >= 0) ;
subplot(311),stem(t,y,'linewidth',1.5);
xlabel('t');
ylabel('x(t)');
title('3.1 original');
axis([-1 1 -1 3]);
grid


yeven=(ones( size(t) ) .* (t >= 0))+(ones( size(t) ) .* (t <= 0));
subplot(312),stem(t,yeven,'linewidth',1.5)
xlabel('t');
ylabel('x(t)');
title('Even');
axis([-1 1 -1 3]);
grid


yodd=(ones( size(t) ) .* (t >= 0))-(ones( size(t) ) .* (t <= 0));
subplot(313),stem(t,yodd,'linewidth',1.5)
xlabel('t');
ylabel('x(t)');
title('Odd');
axis([-1 1 -1 3]);
grid;