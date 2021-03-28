%program to find perfect squares

j=1;
n=0; 
while(n<=20000)
    w=sqrt(n);
    r=fix(w);
    d=w-r;
    if (d==0)
        perfsqr(j)=n;
       
        j=j+1;
    end
    n=n+1;
end
fprintf('the following numbered lights will be on')

i=1;
while(i<j)
  fprintf('%d   --> %d \n',perfsqr(i))
  i=i+1;
end
