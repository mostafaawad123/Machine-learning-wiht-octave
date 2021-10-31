function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters   
    J_history(iter) = computeCost(X, y, theta);
    theta(1)=theta(1)-(alpha*(1/m)*sum(((X*theta)-y).*X(:,1)));
    theta(2)=theta(2)-(alpha*(1/m)*sum(((X*theta)-y).*X(:,2)));
    %theta(1)=f;
    %theta(2)=e;
end

end
