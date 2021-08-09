L = pi; 
xInc = 0.01;
T = 3;
Tinc = 0.01;
Tset = [0.0,0.5, 1.0,1.5,2.0,3.0];
h = 1;
a = 1;
x = 0:xInc:L;
t = 0:Tinc:T;
N = 100;
U = zeros(length(t),length(x));
for n=1:N
    sn = ((8*h)/(n*pi)^2*cos(n*t')*sin(n*pi/2)*sin(n*x));
    U = U + sn;
    if(n == 5)         
        s5 = sn;
    end
end
 hold on;
for i=1:length(Tset) 
    ind = Tset(i)/Tinc; 
    plot(x,s5(ind+1,:))
end
xlabel('x')
ylabel('u_5(x,t)')
title('Fifth Standing Wave')
legend('t=0.0','t=0.5','t=1.0','t=1.5','t=2.0','t=3.0')
figure 
for i=1:length(Tset)
ind = Tset(i)/Tinc;
subplot(2,3,i);
plot(x,U(ind+1,:));
xlabel('x')
ylabel('u(x,t)')
title(['t = ' num2str(Tset(i))])
end