yinitial=0;
for n=1:5
    if
        n==1
        yn=0.6*yinitial+4;
        t(n)=n;
    else
        y(n)=0.6*y(n-1)+4
        t(n)=n;
    end
end
plot(t,y)