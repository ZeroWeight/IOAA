clc;clear all;
f = zeros(1,100);
for i = 1:100
    [~,f(i)] = GA(100);
end