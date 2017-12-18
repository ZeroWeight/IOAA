function [ y, softmax, predict ] = gen_network( x,w1,w2,w3,b1,b2,b3 )
% a 2-layer network, layer1_size * layer2_size node, 
% relu activate for all layers
% x: n * 784 matrix
% w1: 784 * layer1_size matrix, b1: 1 * layer1_size matrix, 
% layer1: n * layer1_size matrix
% w2: layer1_size * layer2_size matrix, b2: 1 * layer2_size matrix,
% layer2: n * layer2_size matrix
% w3: layer2_size * 10 matrix, b3:10 vector, y: n * 10 matrix
% softmax: n * 10 matrix
layer1 = bsxfun(@plus,x * w1,b1);
layer1(layer1 < 0) = 0; % relu
layer2 = bsxfun(@plus,layer1 * w2,b2);
layer2(layer2 < 0) = 0; % relu
y = bsxfun(@plus,layer2 * w3,b3);
y(y < 0) = 0;
y = bsxfun(@minus,y,max(y,[],2));
softmax = exp(y);
s = sum(softmax,2);
softmax = bsxfun(@rdivide,softmax,s);
[~,predict] = max(y,[],2);
predict = predict - 1;
end

