figure
y = dsolve('D2y=(-6)*Dy-5*y+10', 'y(0)=-1', 'Dy(0)=0');
ezplot(y)
grid
axis([-1 7 -4 4])
title('Problem 4 part d')
xlabel('time')
ylabel('Dsolve')
