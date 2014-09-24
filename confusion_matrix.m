function [ c ] = confusion_matrix( desired, classified )

    c = zeros(2);
    for i = 1:size(desired,1)
        if desired(i) == classified(i)
            if desired(i) == 1
                c(1, 1) = c(1, 1) + 1;
            else
                c(2, 2) = c(2, 2) + 1;
            end
        else
            if desired(i) == 1
                c(1, 2) = c(1, 2) + 1;
            else
                c(2, 1) = c(2, 1) + 1;
            end
        end
    end
    c(1, :) = c(1, :)./(c(1,1) + c(1,2));
    c(2, :) = c(2, :)./(c(2,1) + c(2,2));
end

