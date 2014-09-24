function [ cm_bayes, cm_lms, cm_weiner, bayes_acc, lms_acc, weiner_acc, mse ] = main(  )
    
    plot_flag = 1;
    meu = [ 0 2.5; 0 0 ];
    sigma = [ 1 0; 0 1 ];
    dataset = dataset_2( meu, sigma, 1000, -plot_flag );
    testset = dataset_2( meu, sigma, 100, plot_flag );
    
    % classification using Bayes
    y_bayes = Bayes_classifier(  dataset, testset(:, 1:2), meu);
    cm_bayes = confusion_matrix( testset(:, 3), y_bayes);
    bayes_acc = accuracy(cm_bayes);
    
    %plot
    if plot_flag == 1
        plot_classification(testset, y_bayes, 2);
    end
    
    % classification using LMS
    [ y_lms, mse ] = LMS_classifier( dataset, testset(:, 1:2), 0.05 );
    cm_lms = confusion_matrix( testset(:, 3), y_lms);
    lms_acc = accuracy(cm_lms);
    
    if plot_flag == 1
        plot_classification(testset, y_lms, 3);
    end
    
    % classification using Weiner
    [ y_weiner ] = Weiner_classifier( dataset, testset(:, 1:2) );
    cm_weiner = confusion_matrix( testset(:, 3), y_weiner);
    weiner_acc = accuracy(cm_weiner);
    
    if plot_flag == 1
        plot_classification(testset, y_weiner, 4);
    end

end

