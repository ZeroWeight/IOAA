function order = decoder(map,chrom)
NumCity = length(map);
nfind = ones(1,NumCity);
order = zeros(1,NumCity,'int8');
for j = 1 : NumCity 
    while chrom(j) > 0
        if order(j) == NumCity
            order(j) = 1;
        else
            order(j) = order(j) + 1;
        end
        if nfind(order(j)) 
            chrom(j) = chrom(j) - 1;
        end  
    end
    nfind(order(j)) = 0;
end
end