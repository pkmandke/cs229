function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

%c1 = repmat(centroids(1, :), size(X, 1), 1);
%c2 = repmat(centroids(2, :), size(X, 1), 1);
%c3 = repmat(centroids(3, :), size(X, 1), 1);

%[dists, idx] = min([sum((X-c1).^2, 2) sum((X-c2).^2, 2) sum((X-c3).^2, 2)], [], 2);

c1 = repmat(centroids(1, :), size(X, 1), 1);

dists = sum((X-c1).^2, 2)';
for i=2:K  
  c1 = repmat(centroids(i, :), size(X, 1), 1);
  dists = [dists; sum((X-c1).^2, 2)'];
  %[dists, idx(i)] = min(sum((X-c1).^2, 2), [], 2);
end


[d, idx] = min(dists, [], 1);
idx = idx';



% =============================================================

end

