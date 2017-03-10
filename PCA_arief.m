function [Ypca] = assign1PCA(X, num_component)
% This function computes the PCs of data
% Arief B. Koesdwiady (2014)
num_dim, num_data = size(X)
Xbar = (X-mean(X,2)*ones(1,num_data));
S = Xbar*Xbar';
[U, ~, ~] = svd(S);
Y = U'*Xbar;
Ypca = Y(1:num_component,:);
end

