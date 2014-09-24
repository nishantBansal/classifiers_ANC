Classifiers (Artificial Neural Computation)
===============

The purpose of this project is to implement Bayesian, LMS and Weiner Filter to classify two 2-D Gaussian Cluster data set.

To Run:
  1. Download and Install MATLAB.
  2. Run the main.m
    - It will create the training data set and test set.
    - Will then train the three classifiers and classify the test set.
    - the function returns: the confusion matrix followed by accuracy of Bayes, LMS and Weiner in that order and MSE for LMS.
    - It will also scatter plot the data set and classified test set for all the classifiers.
  3. To get the average accuracy of all the classifiers for a count of iterations, run average_accuracy.m
  
Notes:
  1. The mean used for each cluster is (0, 0) and (2.5, 0).
  2. The variance is unit for both clusters.
  3. The training dataset contains 1000 data points from each cluster.
  4. The test set consist of 100 data points from each cluster.
  
  ** These values can be easily changed in main.m to play with the classifers.
  ** It is interesting to play with different values and I personally encourage that.
