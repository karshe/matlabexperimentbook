clear all; clc
%% ROULETTE SELECTION FOR REPRODUCTION %%

population = [12 45 76 32 54 21];
sum_pop = sum(population);
rand_num = randi([0, sum_pop]);

fprintf('RUNNING ROULETTE SELECTION ON POPULATION OF %d\n', size(population,2));
fprintf('POPULATION SUM : %d\n', sum_pop);
fprintf('RANDOM NUMBER GENERATED : %d\n', rand_num);

s = rand_num;

for i=1:1:size(population,2)
   s = s - population(i);
   
   fprintf('SIMULATION COUNT : %d\n', i);
   fprintf('POPULATION FITNESS FOR %d IS %d\n', i, population(i)); 
   fprintf('VALUE OF s : %d\n', s);
   
   if s <= 0
       fprintf('SELECTION DONE!\n');
      break;
   end
   
end

fprintf('WE SELECTED %d FROM CROWD FOR REPRODUCTION!\n', i);
fprintf('FITNESS COUNT OF %d IS %d\n', i, population(i));