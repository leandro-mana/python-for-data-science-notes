# Chapter 08: Linear Regression

Foundations of linear regression for predicting continuous values, progressing from simple
models to regularized approaches with principled model selection.

## Notebooks

| # | Notebook | Description |
|---|----------|-------------|
| 1 | `01_simple_linear_regression.ipynb` | The regression problem, OLS, sklearn LinearRegression, residual analysis, R² |
| 2 | `02_multiple_and_polynomial.ipynb` | Multiple predictors, PolynomialFeatures, interaction terms, overfitting demo, pipelines |
| 3 | `03_regularization_and_cross_validation.ipynb` | Ridge, Lasso, ElasticNet, cross-validation, GridSearchCV, learning curves |

## Key Concepts

- **Simple Linear Regression**: modelling a target as a linear function of one feature
- **Ordinary Least Squares (OLS)**: minimizing the sum of squared residuals to find the best-fit line
- **Multiple Linear Regression**: extending the model to several predictors
- **Polynomial Regression**: capturing non-linear relationships via polynomial feature expansion
- **Regularization**: Ridge (L2), Lasso (L1), and ElasticNet penalties to prevent overfitting
- **Cross-Validation**: unbiased estimation of model performance on unseen data
- **Bias-Variance Trade-off**: diagnosing underfitting and overfitting with learning curves

## Libraries Used

- **NumPy** — synthetic data generation and array operations
- **Matplotlib** — plotting regression lines, residuals, and learning curves
- **scikit-learn** — LinearRegression, Ridge, Lasso, ElasticNet, PolynomialFeatures, Pipeline, GridSearchCV, cross_val_score, learning_curve
