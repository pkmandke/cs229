function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
%x1 = Xval(:, 1);
%x2 = Xval(:, 2);
clist = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
best_err = Inf;
best_C = Inf;
best_sigma = Inf;
for i = 1:8
  for j = 1:8
    model = svmTrain(X, y, clist(i), @(x1, x2) gaussianKernel(x1, x2, clist(j)), 1e-3, 20);
    predictions = svmPredict(model, Xval);
    pred_err = mean(double(predictions ~= yval));
    if pred_err < best_err
      best_err = pred_err;
      best_C = clist(i);
      best_sigma = clist(j);
    end
  end
end
C = best_C;
sigma = best_sigma;


% =========================================================================

end
