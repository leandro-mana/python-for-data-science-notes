# Chapter 10: Logistic Regression

Logistic regression is the foundational algorithm for classification in machine learning. Despite its name, it is a classification method that models the probability of a binary outcome using the sigmoid function. This chapter builds intuition from the ground up — why linear regression fails for classification, how the sigmoid and log-odds work, how to evaluate classifiers properly, and how to extend logistic regression to multiclass problems.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_logistic_regression.ipynb` | From regression to classification, the sigmoid function, log-odds and decision boundaries, Maximum Likelihood Estimation intuition, binary classification with sklearn, interpreting coefficients as log-odds ratios, predict_proba(), decision threshold tuning, visualizing decision boundaries |
| 2 | `02_evaluation_and_tuning.ipynb` | Confusion matrix (TP, TN, FP, FN), precision vs recall tradeoff, ROC curve and AUC, precision-recall curves, threshold tuning for business metrics, class imbalance handling (class_weight, SMOTE), regularization (C parameter, L1 vs L2), hyperparameter tuning with GridSearchCV |
| 3 | `03_multiclass_classification.ipynb` | One-vs-Rest and One-vs-One strategies, softmax / multinomial logistic regression, Iris dataset classification, multiclass confusion matrix and classification_report, visualizing multiclass decision boundaries, when to choose logistic regression over other classifiers |

## Key Concepts

- Logistic regression models the log-odds of the positive class as a linear function of features, passing the result through the sigmoid to produce a probability
- The decision boundary is the set of points where the predicted probability equals the threshold (default 0.5); adjusting the threshold trades off precision and recall
- Evaluation goes beyond accuracy: the confusion matrix, ROC-AUC, and precision-recall curves reveal how a classifier behaves across all operating points
- Regularization (controlled by the C parameter) prevents overfitting; L1 regularization can drive coefficients to zero for feature selection, while L2 shrinks them smoothly
- For multiclass problems, logistic regression generalizes via One-vs-Rest or the softmax function (multinomial), both available in scikit-learn
