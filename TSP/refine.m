function [f,order] = refine1(map,order)
    preparing = true;
    while preparing
        preparing = false;
        t_order = order;
        t_order(length(map)) = order(1);
        t_order(1) = order(length(map));
        if orderdistance(map,t_order) < orderdistance(map,order)
            order = t_order;
            preparing = true;
        else
            t_order = order;
        end
        chaos = true;
        while chaos
            for i = 1:length(map) - 1
                t_order(i) = order(i+1);
                t_order(i+1) = order(i);
                if orderdistance(map,t_order) < orderdistance(map,order)
                    order = t_order;
                    chaos = true;
                    preparing = true;
                else
                    t_order = order;
                    chaos = false;
                end
            end
        end
        cross = true;
        while cross
            cross = false;
            for i = 1:length(map)
                p1 = map(order(i),:);
                p2 = map(order(rem(i,length(map)) +  1),:);
                for j = i+2:length(map)
                    p3 = map(order(j),:);
                    p4 = map(order(rem(j,length(map)) + 1),:);
                    if iscross(p1,p2,p3,p4)
                        temp = order(j);
                        order(j) = order(rem(i,length(map)) + 1);
                        order(rem(i,length(map)) + 1) = temp;
                        cross = true;
                        preparing = true;
                    end
                end
            end
        end
    end
    f = orderdistance(map,order);
    ezp(map,order);
end