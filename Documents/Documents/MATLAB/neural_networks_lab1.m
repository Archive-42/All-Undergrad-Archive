x=[[0,0,0,0,1,1,1,1];[0,0,1,1,0,0,1,1];[0,1,0,1,0,1,0,1]];
y_ideal=[0,0,1,0,1,0,1,1];

k=1;


while
    for i=1:1:3
        for j=1:1:8
            w=[[1:1:k+1];[1:1:k+1];[1:1:k+1]];
            y_calc=(w[1,k]*x[1,i]+w[2,k]*x[2,i]+w[3,k]*x[3,i]);

            if y_calc>=w0
                u=1;
            else
                u=0;
            end
            y_calc=y_calc*u;
            w=y_ideal-y_calc;
        end
    end
end
   
    

    
   