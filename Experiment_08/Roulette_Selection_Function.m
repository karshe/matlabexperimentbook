function [ selected ] = Roulette_Selection_Function( population_fitness )
    sum_pop = sum(population_fitness);
    rand_num = randi([0, sum_pop]);
    s = rand_num;

    for i=1:1:size(population_fitness,2)
       s = s - population_fitness(i);
       if s <= 0
          break;
       end
    end
    selected = i; 
end

