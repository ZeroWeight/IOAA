function [x,fval,exitflag,output,population,score] = GA_opt(nvars,testX,testY,layer1_size,layer2_size)
%% This is an auto generated MATLAB file from Optimization Tool.
z = @(W) loss(testX,testY,W,layer1_size,layer2_size);
%% Start with the default options
options = gaoptimset;
%% Modify options setting
options = gaoptimset(options,'Display', 'off');
options = gaoptimset(options,'PlotFcns', {  @gaplotbestf @gaplotbestindiv });
options = gaoptimset(options,'Vectorized', 'off');
options = gaoptimset(options,'UseParallel', 1 );
[x,fval,exitflag,output,population,score] = ...
ga(@(W)z(W*1e-3),nvars,[],[],[],[],[],[],[],[],options);
