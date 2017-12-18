function [x,fval,exitflag,output] = SA_opt(x0,testX,testY,layer1_size,layer2_size)
%% This is an auto generated MATLAB file from Optimization Tool.
z = @(W) loss(testX,testY,W,layer1_size,layer2_size);
%% Start with the default options
options = saoptimset;
%% Modify options setting
%options = saoptimset(options,'AnnealingFcn', @annealingboltz);
options = saoptimset(options,'Display', 'off');
options = saoptimset(options,'HybridInterval', 'end');
options = saoptimset(options,'PlotFcns', {  @saplotbestf @saplotbestx });
options = saoptimset(options,'InitialTemperature', 50);
[x,fval,exitflag,output] = ...
simulannealbnd(@(W)z(W*10),x0,[],[],options);
