# Chapter 12: Support Vector Machines

Support Vector Machines (SVMs) are powerful supervised learning models that work by finding the optimal hyperplane that separates classes with the maximum margin. Through the kernel trick, SVMs can efficiently learn non-linear decision boundaries by implicitly mapping data into higher-dimensional feature spaces without ever computing the coordinates in those spaces. This chapter covers SVM classification with hard and soft margins, the most common kernel functions, SVM regression with the epsilon-insensitive tube, and practical hyperparameter tuning.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_svm_classification.ipynb` | Maximum margin hyperplane, support vectors, hard vs soft margin, the C parameter, LinearSVC and SVC, the kernel trick (linear, polynomial, RBF), gamma parameter, visualizing decision boundaries, GridSearchCV for C and gamma, when SVMs shine |
| 2 | `02_svm_regression.ipynb` | SVR and the epsilon-insensitive tube, LinearSVR and SVR, epsilon parameter, kernel SVR (RBF, polynomial), comparison with linear regression on nonlinear data, tuning C / epsilon / gamma, visualizing the epsilon tube, pros and cons, when to use SVM vs other methods |

## Key Concepts

- SVMs find the hyperplane that maximizes the margin between classes; the data points closest to this boundary are called support vectors
- The C parameter controls the trade-off between a wide margin (more regularization) and fewer misclassifications (less regularization)
- The kernel trick allows SVMs to learn non-linear boundaries by computing dot products in a high-dimensional space without explicitly transforming the data
- The RBF kernel's gamma parameter controls model complexity: small gamma produces smooth boundaries, large gamma produces complex ones that risk overfitting
- SVR fits a tube of width epsilon around the prediction; data points inside the tube incur no penalty
- SVMs are particularly effective on high-dimensional data and datasets with clear margins, but can be slow to train on very large datasets
- Feature scaling is essential before training any SVM, since the algorithm is distance-based
