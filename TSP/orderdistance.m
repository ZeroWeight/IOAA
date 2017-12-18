function f = orderdistance (map,order)
x = map(order(length(map)),1) - map(order(1),1);
y = map(order(length(map)),2) - map(order(1),2);
f = sqrt(x * x + y * y);
for j = 1 : (length(map) - 1)
    x = map(order(j),1) - map(order(j+1),1);
    y = map(order(j),2) - map(order(j+1),2);
    f = f + sqrt(x * x + y * y);
end
end