function bell = mytest()
data = load('ex1data1.txt');
y = data(:, 2);
m = length(y); 
X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
% Some gradient descent settings
iterations = 1500;
alpha = 0.01;


theta = zeros(2, 1); % initialize fitting parameters

fprintf('\nRunning Gradient Descent ...\n')
% run gradient descent
theta = gradientDescent(X, y, theta, alpha, iterations);
bell = theta;
% print theta to screen
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);
fprintf('Expected theta values (approx)\n');
fprintf(' -3.6303\n  1.1664\n\n');
end