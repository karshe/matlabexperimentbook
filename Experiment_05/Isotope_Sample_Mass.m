clear all; clc

figure(1)
hold on

y = [];
T = [];
plotted = false;

markerY = [];
markerT = [];

y0=120;
k=-4.278686299752749e-04;

for t=0:10:10000
    T=[T, t];
    y=[y, y0*exp(k*t)];
    
    temp = y0*exp(k*t);
    
    if (temp == y0/1) || (temp == y0/2) || (temp == y0/4)
        markerY = [markerY, temp];
        markerT = [markerT, t];
    end
    
    if (ceil(temp) == y0/12)
        markerY = [markerY, temp];
        markerT = [markerT, t];        
    end
    
     if (floor(temp) == 1)
         
        if(plotted == false)
            hold on
            str1 = 'y_{0} \approx 1g \rightarrow ';
            text(t,temp,str1,'HorizontalAlignment','right');
            plotted = true;
        end
         
        markerY = [markerY, temp];
        markerT = [markerT, t];
    end
    
end

plot(T,y);
title('RADIUM-226 Isotope Mass v/s Time');
xlabel('Years');
ylabel('Mass of Isotope');

hold on
plot(markerT,markerY,'ro');

hold on
str1 = '\leftarrow y_{0} \approx 120g';
text(markerT(1,1),markerY(1,1),str1);

hold on
str1 = '\leftarrow y_{0} \approx 60g';
text(markerT(1,2),markerY(1,2),str1);


hold on
str1 = '\leftarrow y_{0} \approx 30g';
text(markerT(1,3),markerY(1,3),str1);


hold on
str1 = '\leftarrow y_{0} \approx 10g';
text(markerT(1,4),markerY(1,4),str1);


hold on
str1 = '\leftarrow y_{0} \approx 10g';
text(markerT(1,4),markerY(1,4),str1);
