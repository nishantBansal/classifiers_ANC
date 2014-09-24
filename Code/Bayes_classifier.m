function [ y ] = Bayes_classifier(  dataset, testset, meu )
    x = dataset(:, 1:2);
    d = dataset(:, 3);
    meu1 = meu(:,1);
    meu2 = meu(:,2);
    ind = find(d == 1);
    C = cov(x(ind, :));
    w = ((meu1 - meu2)'/C)';
    b = ((meu2'/C)*meu2 - (meu1'/C)*meu1)/2;

    y = sign(testset*w + b);
end

