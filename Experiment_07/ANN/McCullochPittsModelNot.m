function [ y ] = McCullochPittsModelNot( input, weights, threshold)
    x = input * weights;
    y = 0;
    if x < threshold
        y = 1;
    end
end

