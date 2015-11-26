%%McCulloch-Pitts Neuron Model%%
clear all; clc
x1 = [0 0 1 1]; % INPUT 1 %
x2 = [0 1 0 1]; % INPUT 2 % 
z = [1 0 0 0]; % OUTPUT %

notmapped = true;
% WEIGHTS %
w1 = input('ENTER WEIGHT(w1) : ');
w2 = input('ENTER WEIGHT(w2) : ');

% THRESHOLD %
theta = input('ENTER THRESHOLD(theta) : ');

while notmapped
    for i=1:size(x1,2)
        zin = x1*w1 + x2*w2;

        if zin(i)>=theta
            y(i) = 1; 
        else
            y(i) = 0;
        end
    end

    fprintf('MAPPED VECTOR WITH\n');
    fprintf('WEIGHT(w1) = %d \t WEIGHT(w2) = %d \t THRESHOLD(theta) = %d\n', w1, w2, theta);
    disp(y);
    
    fprintf('\nCOMPARING\n');
    
    
    if y==z
        notmapped = false;
    else
        disp('NETWORK WAS UNABLE TO LEARN, PLEASE ENTER ANOTHER SET OF WEIGHTS AND THRESHOLD');
        w1 = input('ENTER WEIGHT(w1) : ');
        w2 = input('ENTER WEIGHT(w2) : ');
        theta = input('ENTER THRESHOLD(theta) : ');
    end    
end

disp('WEIGHTS AND THRESHOLD FOUND');
fprintf('WEIGHT(w1) : %d\n', w1);
fprintf('WEIGHT(w2) : %d\n', w2);
fprintf('THRESHOLD(theta) : %d\n', theta);
