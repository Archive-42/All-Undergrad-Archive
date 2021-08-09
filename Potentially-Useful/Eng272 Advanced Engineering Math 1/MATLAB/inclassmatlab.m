x1 = 0:0.01:pi; x2 = -pi:0.01:2*pi;
f1 = (pi - x1).^2;
hold on; plot(x1,f1,'Color','k','LineWidth',2)
N = 1000; f2 = zeros(length(x2),1);
a0 = pi^2/3;
f2 = f2 + a0;
for n=1:N     
    f2 = f2 + (1/n^2)*cos(2*n*x2)' + (pi/n)*sin(2*n*x2)';   
    if(n == 1 || n == N)     
        plot(x2,f2,'--','LineWidth',1)  
    end
end
legend('f(x)','N=1','N=1000') 
xlim([-pi 2*pi]) 
ylim([-2 11])
