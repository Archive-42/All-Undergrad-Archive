yinitial=0;
y=zeros(1,10000);
t=zeros(1,10000);
for n=1:20
    if n==1;
        y(n)=4*yinitial+0.15*yinitial+1;
        t(n)=n; 
    elseif n==2
        y(n)=4*y(n-1)+0.15*yinitial+1;
t(n)=n;
    else
        y(n)=4*y(n-1)+0.15*y(n-2)+1;
        t(n)=n;
    end
end
stem(t,y)