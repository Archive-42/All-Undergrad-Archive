dsolve('Dy-y=e^(2*t)')

ans =

C1 * exp(t) + e^(2 * t) / (2 * log(e) - 1)

dsolve('D2y+8*Dy+16*y=0')

ans =

C2 * exp(-4 * t) + C3 * t * exp(-4 * t)

dsolve('Dy-y=e^(2*t)', 'y(0)=5')

ans =

e^(2 * t) / (2 * log(e) - 1) - exp(t) * (1 / (2 * log(e) - 1) - 5)
