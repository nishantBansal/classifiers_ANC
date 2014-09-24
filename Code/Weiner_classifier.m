function [ y ] = Weiner_classifier( dataset, testset )

    x = dataset(:, 1:2);
    x = [ones(size(dataset, 1), 1) x];
    d = dataset(:, 3);
    rx = x*x';
    rdx = x'*d;
    w = (inv(x'*x)*x')*d;
    
    testset = [ ones(size(testset, 1), 1) testset ];
    y = sign(testset*w);
    
end

