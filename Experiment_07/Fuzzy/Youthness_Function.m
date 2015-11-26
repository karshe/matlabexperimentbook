function [ youthness_index ] = Youthness_Function( age )

if age <= 20
    youthness_index = 1;
elseif age<=30 && age>20
    youthness_index = (30-age)/10;
else
    youthness_index = 0;
end

end

