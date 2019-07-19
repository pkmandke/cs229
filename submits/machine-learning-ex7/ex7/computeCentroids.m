function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);
%display(size(idx(idx == 3), 1))
% You need to return the following variables correctly.
centroids = zeros(K, n);
%inds = [repmat(idx, 1, n); repmat(idx, 1, n); repmat(idx, 1, n)];

for i=1:K
  i1 = repmat(idx, 1, n);
  i1(i1 != i) = 0;
  i1(i1 == i) = 1;
  centroids(i, :) = n*sum(i1.*X, 1)./size(i1(i1 == 1)(:), 1);
end

%i1(i1 == 2) = 0;
%i1(i1 == 3) = 0;

%i2(i2 == 1) = 0;
%i2(i2 == 2) = 1;
%i2(i2 == 3) = 0;
%display(i3)
%i3(i3 == 2) = 0;
%i3(i3 == 1) = 0;
%i3(i3 == 3) = 1;

%centroids = [sum(i1.*X, 1)./size(i1(i1 == 1)(:), 1); sum(i2.*X, 1)./size(i2(i2 == 1)(:), 1); sum(i3.*X, 1)./size(i3(i3 == 1)(:), 1)].*2;


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%








% =============================================================


end

