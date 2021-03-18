n=-2:10;
x(n)=heaviside(n);
yinitial=0;
t=zeros(1,1000000);
y=zeros(1,1000000);
for n=-2:10
    if n==1
        y(n)=x(n)+4*yinitial+0.15*yinitial;
        t(n)=n;
    else
        y(n)=x(n)+4*y(n-1)+0.15*y(n-2);
        t(n)=n;
    end
end
stem(t,y)

