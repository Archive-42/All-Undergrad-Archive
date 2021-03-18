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
dot(a, c)
d = a + b + c;
dot(a, d)
e = dot(a, b);
f = dot(b, b);
g = e / f;
dot(g, b)

a = [1 -3 1];
b = [2 0 4];
cross(a, b)

a = [2 -1 2];
b = [-1 3 -1];
cross(a, b)

a = [.5 0 .5];
b = [4 6 0];
cross(a, b)

p1 = [0 1 0];
p2 = [0 0 1];
c = cross(p1, p2);
A = 0.5 * norm(c)
