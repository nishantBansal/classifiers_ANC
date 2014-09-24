function [ y, mse ] = LMS_classifier( dataset, testset, rate )

    n = size(dataset, 1);
    x = dataset(:, 1:2);
    x = [ones(n, 1) x];
    d = dataset(:, 3);
    w = zeros(n, 3);
    mse = zeros(n, 1);
    w(1, :) = 1;
    for i = 1:n-1
        e = ( d(i,1) - x(i, :)*w(i, :)' );
        mse(i,1) = (1/2)*(e^2);
        w(i+1, :) = w(i, :) + rate*x(i, :)*e;
    end
    
    testset = [ ones(size(testset, 1), 1) testset ];
    y = sign(testset*w(n,:)');

end