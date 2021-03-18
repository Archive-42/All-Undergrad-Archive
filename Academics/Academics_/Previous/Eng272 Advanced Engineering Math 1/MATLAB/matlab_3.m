syms t w x x0 x1 c1 c2
dsolve('D2x+w^(2)*X=0')

syms x y c1 c2
S=dsolve('D2y-4*Dy+4*y=2e^(2x)+4x-12')


syms y x c1 c2
dsolve('diff(y,4)+2*diff(y,2)+y==(x-1)^2')


syms x t w f0 
dsolve('D2x+w^(2)*x = f0*sin(wt)')

syms x y c1 c2
dsolve('D2y+y= x^2+1')

syms x y c1 c2
dsolve('(D2y)*x^(2)-3x*(Dy)-2y =0')

syms x y c1 c2 m
dsolve('25x^(2)*D2y+25x*Dy+y=0')


syms x t c1 c2 c3 c4 g
f=diff(t,2)==-g;
diff(f,2)



