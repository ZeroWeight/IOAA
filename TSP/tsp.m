function [f,order] = tsp(map,GA_loop)
[min_route,min_length] = GA_TSP(map,[],inf);
%fprintf('0\t%f\t%f\n',min_length,min_length);
for i = 1:GA_loop-1
    [t_route,t_length] = GA_TSP(map,min_route,min_length);
    %fprintf('%d\t%f\t%f\n',i,t_length,min_length);
    if t_length < min_length
        min_route = t_route;
        min_length = t_length;
    end
end
order = decoder(map,min_route);
[f,order] = refine(map,order);