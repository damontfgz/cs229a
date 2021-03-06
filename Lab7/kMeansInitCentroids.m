function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should return this values correctly
centroids = zeros(K, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should set centroids to randomly chosen examples from
%               the dataset X
%

%m = length(X);
%for k=1:K
%    centroids(i)=X(rand(m));
%end

%Randomly reorder the indices of examples
rand_idx = randperm(size(X,1));

%take the first K examples as centroids
centroids = X(rand_idx(1:K), :);

% =============================================================

end

