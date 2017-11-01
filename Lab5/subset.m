function [x, y] = subset(X_poly,y_poly)
    
    m = size(X_poly,1);
    n = size(X_poly,2);
    
    %max_subset = randi(m);
    max_subset = m;
    
    x = zeros(max_subset, n);
    y = zeros(max_subset,1);
    
    sorted_indices = randperm(m);
    
    for k=1:max_subset
        
        i = sorted_indices(k);
        x(k,:) = X_poly(i,:);
        y(k) = y_poly(i);
        
    end
    
end