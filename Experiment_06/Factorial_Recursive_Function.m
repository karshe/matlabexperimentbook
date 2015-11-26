function [ fact_n ] = Factorial_Recursive_Function( n )
 if n>1
     fact_n = n * Factorial_Recursive_Function( n-1 );
 else
     fact_n = 1;
 end
end