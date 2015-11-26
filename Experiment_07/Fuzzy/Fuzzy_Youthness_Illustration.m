clear all; clc

age = [];
sample_age = [11,18,25,25,44,52,79,89];
sample_y_index = [];
y_index = [];

for i=1:1:100
  youthness = Youthness_Function(i);
  age = [age, i];
  y_index = [y_index, youthness];
end

for i=1:1:size(sample_age,2)
  youthness = Youthness_Function(sample_age(i));
  sample_y_index = [sample_y_index, youthness];
end

hold on

plot(age, y_index, 'm'); hold on
plot(sample_age, sample_y_index, 'r'); hold on
axis([1 100 -0.05 1.05]);
title('How youth are you?');
xlabel('Age Domain');
ylabel('Degree of Youthness');
hold off