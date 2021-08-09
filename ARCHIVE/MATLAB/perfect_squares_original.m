%program to find perfect squares

j=1;
n=0; 
while(n<=20000)
    whole=sqrt(n);
    natural=fix(whole);
    dif=whole-natural;
    if (dif==0)
        perfsqr(j)=n;
        perfsqrt(j)=whole;
        j=j+1;
    end
    n=n+1;
end
fprintf('the following numbered lights will be on')
fprintf('\n------------------------\nNumber of light \n')
i=1;
while(i<j)
  fprintf('%d   --> %d \n',perfsqr(i))
  i=i+1;
end