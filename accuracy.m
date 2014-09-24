function [ accuracy ] = accuracy( confusionMatix )
    c = confusionMatix;
    a = (c(1,1) + c(2,2))/ (c(1,1) + c(1,2) + c(2,1) + c(2,2));
    accuracy = a;
end

