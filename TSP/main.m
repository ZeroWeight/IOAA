clc;clear;load TSP
for i = 1:100
    fprintf('---- %d ----\n',i);
    f10(i) = tsp(HOP10,1);
    f30(i) = tsp(BEN30,1);
    f50(i) = tsp(BEN50,1);
    f75(i) = tsp(BEN75,1);
end
save f f10 f30 f50 f75;