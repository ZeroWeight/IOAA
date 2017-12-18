function ezp( map,order )
scatter(map(:,1),map(:,2));
hold on;
line([map(order(length(map)),1),map(order(1),1)]...
,[map(order(length(map)),2),map(order(1),2)]);
for j = 1 : length(map) - 1
    line([map(order(j),1),map(order(j + 1),1)]...
    ,[map(order(j),2),map(order(j + 1),2)]);
end
hold off;
end

