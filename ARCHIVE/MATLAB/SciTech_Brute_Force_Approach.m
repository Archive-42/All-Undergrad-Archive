x=zeros(20000,1);
y=(x>0);


for i=1:20000
    for j=i:i:20000
        y(j)= ~y(j);
    end
end
    for i=1:20000
        if y(i)==1
            i
        end
    end
    