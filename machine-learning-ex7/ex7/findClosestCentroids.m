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

for c=1:size(X,1)  %Looping through all data points
  dist=zeros(size(centroids,1), 1);   
  cur_x=X(c, :);  %Securing current X (datapoint) to operate on
  
  for i=1:size(centroids,1)      %Looping through the centroids.
    sub=cur_x-centroids(i, :);    
    dist(i)=sum(sub.^2);           %Calculating norm ||x(i)-c(i)||
  end
    [min_dist index]=min(dist);    %Getting the index (centroid) that has the minimum distance for datapoint c 
    idx(c)=index;     %Assigning the data point to centroid.
end  





% =============================================================

end

