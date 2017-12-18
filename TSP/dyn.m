function [ state ] = dyn( options,state,flag,map,a1,a2 )
[a,i] = min(state.Score);
if a < a2
	chrom = state.Population(i,:);
else
    chrom = a1;
end
order = decoder(map,chrom);
ezp(map,order);
end

