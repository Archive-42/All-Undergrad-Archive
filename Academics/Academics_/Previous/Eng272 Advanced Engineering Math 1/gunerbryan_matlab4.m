syms t s
f= exp(-t)*sin(t)
laplace(f,t,s)

syms t s
f=2*t^4;
laplace(f,t,s)


syms t s
f=(t+1)^3;
laplace(f,t,s)

syms t s
f= (1)/(4*(s)+1);
ilaplace(f,s,t)


syms t s
f=(2*(s)-6)/(s^2+9);
ilaplace(f,s,t)

syms t s
f=(2*(s)-4)/((s^2+s)*(s^2+1));
ilaplace(f,s,t)

