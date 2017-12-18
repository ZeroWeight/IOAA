function [x,fval,exitflag,output,population,score] = GA(nvars)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
lb = ones(1,nvars)*-600;
ub = -lb;
options = gaoptimset;
%% Modify options setting
options = gaoptimset(options,'Display', 'off');
options = gaoptimset(options,'PlotFcns', { @gaplotbestf });
options = gaoptimset(options,'Vectorized', 'on');
[x,fval,exitflag,output,population,score] = ...
ga(@Griewank,nvars,[],[],[],[],lb,ub,[],[],options);
