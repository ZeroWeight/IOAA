function [ f ] = fitness( chrom,NumCity,map )
%fitness Cal the fitness of the chrome
%chrom: chrom(j) > 0
order = decoder(map,chrom);
f = orderdistance(map,order);
end