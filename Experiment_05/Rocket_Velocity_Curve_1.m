m=200;
u=8000;
q=1;
g=32.17;
b=100;
 
count=1;
for t=0:3:300
   
    if t<=b
        v(count)=u*log(m/(m-q*t))-g*t;
    else  
        v(count)=u*log(m/(m-q*b))-g*t;
    end
   
    tt(count)=t;
    count=count+1;
   
end
 
figure(1)
plot(tt,v)
xlabel('Time (sec) ');
ylabel('Velocity (ft/sec) ');
title('Rocket Velocity Curve ');
axis tight