
L = pi;

T= pi;

Tset=[0.0,0.5,1.0,1.5,2.0,3.0];

h=1;
a=1;

x=0:0.01:2*pi;
t=0:0.01:6;

N=1000;


U=zeros(length(t),length(x));
for n=1:N
    b=((8*h/(n^2*pi^2))*cos(n*t'*a)*sin(n*pi/2)*sin(n*x)); % b represents the nth standing wave 
    U=U+b;
    if(n==5)
        s5=b;
    end
end

figure
hold on;
for i=1:length(Tset)
    ind=Tset(i)/0.01;
    plot(x,s5(ind+1,i));
end
xlabel('x')
ylabel('U(x,t)when n=5')
title('fifth standing wave')
legend('t=0.0','t=0.5','t=1.0','t=1.5','t=2.0','t=3.0')


figure
for i=1:length(Tset)
    ind=Tset(i)/0.01;
    subplot(2,3,i);
    plot(x,U(ind+1,i));
    xlabel('x')
    ylabel('U(x,t)')
    title('at t=0.0','at t=0.5','at t=1.0','at t=1.5','at t=2.0','at t=3.0')
end











    



