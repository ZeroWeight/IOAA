function [ f ] = Griewank( X )
% X: 1-N vector
[M,N] = size(X);
iter = sqrt([1:N]);
temp = bsxfun(@(a,b)a./b,X,iter);
f = sum(X.^2,2)/4000 - prod(cos(temp),2) + 1;
end

