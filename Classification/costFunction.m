function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
[m,w] = size(X); % number of training examples
z=X*theta;
h=sigmoid(z);
grad = zeros(size(theta));
% You need to return the following variables correctly 
J =(1/m)*sum(-y.*log(h)-(1-y).*log(1-h));
grad = (1/m)*X'*(h - y);
%for i=1:m
  %for j=1:w
  %grad(w)=(1/m)*sum((h.*y)*X(i,j));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%







%end
%end
% =============================================================

end
