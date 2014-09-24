function [ dataset ] = getDataset( meu, sigma, count, plot)
    % getting Gaussian Clusters
    cluster1 = mvnrnd(meu(:, 1), sigma, count);
    cluster2 = mvnrnd(meu(:, 2), sigma, count);
    tempset = [ cluster1 ones(count, 1); cluster2 -ones(count, 1) ];
    % Randomly shuffling done
    dataset = tempset(randperm(2*count), :);
    if plot == -1
        figure(1);
        scatter(cluster1(:,1), cluster1(:,2), 25, 'r', 'fill');
        hold on;
        scatter(cluster2(:,1), cluster2(:,2), 25, 'b', 'fill');
        legend('class A', 'class B');
    end
end

