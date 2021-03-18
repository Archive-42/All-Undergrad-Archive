a = [4 5; -6 9];
b = [-2 6; 8 -10];
a + b
b - a
2 * a + 3 * b

a = [3 4; 8 1];
b = [5 10; -2 -5];
c = (a * b).'
d = (a.') * (b.')

syms x y z
a = [2 2 0; -2 1 1; 3 0 1];
b = [x; y; z];
c = linsolve(a, b)

syms x y z
a = [1 1 1; 1 -1 -1; 3 1 1];
b = [x; y; z];
c = linsolve(a, b)

a = [3 0 2; 2 7 1; 2 6 4];
d = det(a)

a = [6 1 8 10; 0 2/3 7 2; 0 0 -4 9; 0 0 0 -5];
d = det(a)

a = [1 2 1; 4 1 -1; 1 2 -1];
d = det(a)

a = [2 4];
b = [-1 4];
3 * a
a + b
a - b
norm(a + b)
norm(a - b)

a = [-3 2];
b = [0 7];
3 * a
a + b
a - b
norm(a + b)
norm(a - b)

a = [1 -3];
b = [-1 1];
4 * a - 2 * b
- 3 * a - 5 * b

a = [1 -3 2];
b = [-1 1 1];
c = [2 6 9];
a + (b + c)
b + 2 * (a - 3 * c)

a = [1 -3 2];
b = [-1 1 1];
c = [2 6 9];
norm((a / norm(a))) + 5 * norm((b / norm(b)))

a = [2 -3 4];
b = [-1 2 5];
c = [3 6 -1];
(a, c)
d = a + b + c;
(a, d)
e = (a, b);
f = (b, b);
g = e / f;
(g, b)

a = [1 -3 1];
b = [2 0 4];
cross(a, b)
