1.1.2

A=zeros(6,1)
B=linspace(325,405,4)
a=sum(B)
b=sum(A)

1.2.2

a=[5,3,1];b=[1,3,5];c=a+b
a=[5,3,1];b=[1,3,5];c=a-b
c=a.*b
c=a./b
a.^2
d=[1 2 3;4 5 6;7 8 9];d(1,:),d(:,2)

1.3.2

t1=0:0.1:9;
 t2=0:0.1:8;
 g=9.8;
 vox=50;
 voy=100;
 theta1=(5*pi/12-0.255);
 theta2=(5*pi/12-0.425);
 y=voy*sin(theta1).*t1-0.5*g*t1.^2;
 x=vox*cos(theta1).*t1; 
 figure;
 plot(x,y);
 title('x(t) vs. y(t)');
 xlabel('time(s)')
 xlabel('range')
 xlabel('range(m)')
ylabel('altitude(m)')

y=voy*sin(theta2).*t2-0.5*g*t2.^2
 x=vox*cos(theta2).*t2;
 figure;
 plot(x,y);
 title('x(t) vs. y(t)');
 figure;
 plot(x,y);
 title('x(t) vs. y(t)');
 xlabel('Range');
 ylabel('Altitude');
 xlabel('Range(m)');
 ylabel('Altitude(m)');



