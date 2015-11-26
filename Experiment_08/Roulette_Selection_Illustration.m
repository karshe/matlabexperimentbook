clear all; clc
%% ROULETTE SELECTION FOR REPRODUCTION %%

population_fitness = [12 45 76 32 54 21];
selection = [];
selection_freq = [0 0 0 0 0 0];
sim_size = 1000;

for i=1:1:sim_size
   selected = Roulette_Selection_Function(population_fitness);
   selection_freq(selected) = selection_freq(selected) + 1;
   selection = [selection, selected]; 
end
[maxsf, maxindex] = max(selection_freq);
fprintf('IN %d SIMULATION OF ROULETTE SELECTION\n', sim_size);
fprintf('MOST FAVORABLE : %d WITH TOTAL OF %d SELECTIONS!\n', maxindex, maxsf);
bar(selection_freq);