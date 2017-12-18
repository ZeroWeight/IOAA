function [x,fval,exitflag,output,population,score] = GA_TSP(map,a1,a2)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = gaoptimset;
nvars = length(map);
lb = 0.5 * ones(1,nvars);
ub = (nvars + 1) * 2 *  lb;
cuspl = @(options,state,flag) dyn(options,state,flag,map,a1,a2);
%% Modify options setting
options = gaoptimset(options,'MigrationDirection', 'both');
options = gaoptimset(options,'FitnessScalingFcn', @fitscalingrank);
options = gaoptimset(options,'CrossoverFcn', @crossovertwopoint);
options = gaoptimset(options,'MutationFcn', {  @mutationadaptfeasible 0.4 });
options = gaoptimset(options,'UseParallel', 1 );
options = gaoptimset(options,'Display', 'off');
%options = gaoptimset(options,'PlotFcns', {cuspl,@gaplotbestf});
[x,fval,exitflag,output,population,score] = ...
ga(@(x)fitness(x,nvars,map),nvars,[],[],[],[],lb,ub,[],[],options);
