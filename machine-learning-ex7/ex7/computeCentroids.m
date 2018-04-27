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

% You need to return the following variables correctly.
centroids = zeros(K, n);
divisor=ones(K, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


for i=1:K   %Looping through each centroid
  l=(i==idx);  %Getting the binary equivalent of data points that belong to centroid i
  l=l(:);     %Converting to row matrix
  mean_arr=l.*X;  %Removing the data points that don't belong to centroid K
  if(sum(l)==0)  
    l=1;          %Removing possibility of division by zero error
  end  
  centroids(i, :)=sum(mean_arr)./sum(l);  %Calculating new position for centroid K

end





% =============================================================


end

