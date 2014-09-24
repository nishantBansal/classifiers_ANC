function [ avg_bayes, avg_lms, avg_weiner ] = average_accuracy( iterations )

    a_bayes = zeros(iterations, 1);
    a_lms = zeros(iterations, 1);
    a_weiner = zeros(iterations, 1);
    for i = 1:iterations
        [ ~, ~, ~, a_bayes(i), a_lms(i), a_weiner(i), ~] = hw2();
    end
    avg_bayes = mean(a_bayes);
    avg_lms = mean(a_lms);
    avg_weiner = mean(a_weiner);

end

