
% This code will approxmmate the function f using the DFT

clear all 
close all 

a=0;b=2*pi; % define interval, i.e. endpoints of domain(f) 

N=20; % number of sample points to take from f

% build vector of points in domain(f) to sample from
for j=1:N+1
   x(j) = (b-a)*(j-1)/N;
end

f= cos(x); % approximate cos(x) with resulting Fourier series


% build matrix of powers of roots of unity
for m=1:N+1
   for n=1:N+1
      F(m,n) = exp((m-1)*(n-1)*(2*pi*i)/N);
   end
end

% solve f = Fc by domng F\f
c = F\f'; % c is vector of Fourier coefficients

% plot discrete cos(x) using N points 

xx=0:0.01:2*pi;
plot(xx,cos(xx),'g')
hold on

% build the Fourier series using coefficients from c
summ=0;
for k=1:length(c)
   summ = summ + c(k)*exp(i*(k-1)*x); 
end

% plot the fourier series against the discrete sin function 
plot(x,summ)
legend('actual','approx.')