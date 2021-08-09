%syms x k L n
%evalin(symengine,'assume(k,Type::Integer)'); %tells matlab k is integer
%a = @(f,x,k,L) int(f*cos(k*pi*x/L)/L,x,-L,L);%calculates the kth fourier cos coefficient
%b = @(f,x,k,L) int(f*sin(k*pi*x/L)/L,x,-L,L);%calculates the kth fourier sin coefficient
%fs = @(f,x,n,L) a(f,x,0,L)/2 + ...
%   symsum(a(f,x,k,L)*cos(k*pi*x/L) + b(f,x,k,L)*sin(k*pi*x/L),k,1,n);% calculates nth partial sum
%f= exp(x);

% pretty(fs(f,x,1,pi))
% pretty(fs(f,x,2,pi))
% pretty(fs(f,x,10,pi))
% pretty(fs(f,x,100,pi))

x1 = 0:0.01:pi; x2 = -pi:0.01:2 * pi;
f1 = exp(x1);
hold on; plot(x1, f1, 'Color', 'k', 'LineWidth', 2)
N = 100; f2 = zeros(length(x2), 1);
a0 = sinh(pi) / pi;
f2 = f2 + a0;

for n = 1:N
    f2 = f2 +((2 * sinh(pi) / pi) * (-1)^n / (n^2 + 1)) * (cos(n * x2)' - n * sin(n * x2)');

    if (n == 1 || n == 2 || n == 10 || n == N)
        plot(x2, f2, '--', 'LineWidth', 1)
    end

end

legend('f(x)', 'N=1', 'N=2', 'N=10', 'N=100')
xlim([-pi 2 * pi])
ylim([-4 20])
title('Gibbs sampling')
xlabel('x axis ')
ylabel('f(x) & Sn(x)')
grid
