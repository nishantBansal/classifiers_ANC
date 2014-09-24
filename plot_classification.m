function [  ] = plot_classification( testset, y, fig )

    d = testset(:, 3);
    figure(fig);
    hold on;
    test = y + d;
    class11 = find(test == 2);
    scatter(testset(class11,1), testset(class11,2), 25, 'r', 'fill');
    hold on;
    class22 = find(test == -2);
    scatter(testset(class22,1), testset(class22,2), 25, 'b', 'fill');
    
    test = d - y;
    class12 = find(test == 2);
    scatter(testset(class12,1), testset(class12,2), 50, 'b', '+');
    
    class21 = find(test == -2);
    scatter(testset(class21,1), testset(class21,2), 50, 'r', '+');
    
    legend('c11', 'c22', 'c12', 'c21');

end

