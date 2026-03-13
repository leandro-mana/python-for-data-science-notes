# Chapter 07: Overview of Machine Learning

An introduction to machine learning concepts, the Scikit-Learn library, and model evaluation techniques.

## Notebooks

| # | Notebook | Description |
|---|----------|-------------|
| 1 | `01_what_is_machine_learning.ipynb` | What ML is, types of ML, the ML workflow, overfitting vs underfitting |
| 2 | `02_scikit_learn_intro.ipynb` | The Estimator API, data representation, KNN classification, linear regression |
| 3 | `03_model_evaluation.ipynb` | Classification and regression metrics, cross-validation, confusion matrices |

## Key Concepts

- **Supervised Learning**: Learning from labeled data (classification and regression)
- **Unsupervised Learning**: Discovering patterns in unlabeled data (clustering, dimensionality reduction)
- **Reinforcement Learning**: Learning through interaction with an environment and reward signals
- **The ML Workflow**: Problem definition, data collection, preprocessing, train/test split, training, evaluation, deployment
- **Bias-Variance Tradeoff**: Balancing model simplicity (bias) against sensitivity to data (variance)
- **Scikit-Learn Estimator API**: The consistent `fit()` / `predict()` / `transform()` interface
- **Data Representation**: Features matrix X (n_samples, n_features) and target vector y (n_samples,)
- **Classification Metrics**: Accuracy, precision, recall, F1-score, confusion matrix
- **Regression Metrics**: MAE, MSE, RMSE, R-squared
- **Cross-Validation**: k-Fold and Stratified k-Fold for robust performance estimation
