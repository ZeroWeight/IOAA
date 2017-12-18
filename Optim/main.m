clc;clear;
load MNIST;
layer1_size = 100;
layer2_size = 100;
testX = reshape(testX,[],28*28);
testX = testX / 255;
trainX = reshape(trainX,[],28*28);
trainX = trainX / 255;
para = 784 * layer1_size + layer1_size + layer1_size * ...
layer2_size + layer2_size + layer2_size * 10 + 10;
%GA_opt(para,trainX,trainY,layer1_size,layer2_size);
%SA_opt(zeros(1,para),testX,testY,layer1_size,layer2_size);
load result;
save para layer1_size layer2_size;