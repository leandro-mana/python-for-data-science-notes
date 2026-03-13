# Chapter 11: K-Nearest Neighbors

K-Nearest Neighbors (KNN) is one of the simplest and most intuitive machine learning algorithms. It is an instance-based, non-parametric method that makes predictions by finding the K training samples closest to a new data point and aggregating their labels (classification) or values (regression). These notebooks explore the algorithm from first principles through practical scikit-learn implementations.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_knn_classification.ipynb` | KNN intuition (neighbor voting), distance metrics (Euclidean, Manhattan, Minkowski), effect of K on decision boundaries, KNeighborsClassifier, curse of dimensionality, importance of feature scaling, classification on synthetic data, decision boundary visualization, elbow method for choosing K, cross-validation for K selection, pros and cons |
| 2 | `02_knn_regression.ipynb` | KNN for regression (averaging neighbors), KNeighborsRegressor, weighted KNN (weights='distance'), regression on synthetic data, visualizing predictions vs true function, effect of K on smoothness, comparison with linear regression, when to use KNN vs parametric models, strengths and weaknesses summary |

## Key Concepts

- KNN stores the entire training set and defers computation to prediction time, making it a lazy learner
- The choice of K controls the bias-variance trade-off: small K gives low bias but high variance, large K gives high bias but low variance
- Distance metrics determine how "closeness" is measured; Euclidean is the default, but Manhattan and Minkowski offer alternatives for different data geometries
- Feature scaling (standardization or normalization) is critical because KNN relies on distances, and unscaled features with larger ranges will dominate the distance calculation
- The curse of dimensionality causes distances between points to become increasingly similar in high-dimensional spaces, degrading KNN performance
- Weighted KNN (weights='distance') gives closer neighbors more influence, often improving predictions when the density of training points is uneven
