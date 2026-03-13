# Chapter 09: Feature Engineering

Feature engineering is the process of transforming raw data into features that better represent the underlying patterns to a predictive model. Good features can make the difference between a mediocre model and an excellent one. These notebooks cover the most important scikit-learn tools for numerical transformations, categorical encoding, and building complete preprocessing pipelines.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_numerical_features.ipynb` | Feature scaling (StandardScaler, MinMaxScaler, RobustScaler), outlier handling (IQR, clipping, log transform), power transforms (log1p, Box-Cox, Yeo-Johnson), binning with KBinsDiscretizer, interaction features, visualizing distributions |
| 2 | `02_categorical_features.ipynb` | Ordinal vs nominal data, LabelEncoder, OneHotEncoder, pd.get_dummies(), high-cardinality strategies (frequency encoding, target encoding), handling unknown categories, binary features, mixed-type encoding example |
| 3 | `03_pipelines_and_column_transformers.ipynb` | Data leakage prevention, sklearn Pipeline, ColumnTransformer, SimpleImputer + scaler/encoder chains, make_pipeline and make_column_transformer shortcuts, pipelines with cross-validation, feature selection (SelectKBest, VarianceThreshold), full raw-data-to-prediction pipeline |

## Key Concepts

- Feature scaling is essential for distance-based algorithms (KNN, SVM, logistic regression) but unnecessary for tree-based models
- Always fit preprocessing on training data only and transform both train and test sets to avoid data leakage
- Choose encoding strategies based on the nature of the categorical variable: ordinal encoding preserves order, one-hot encoding treats each category independently
- Scikit-learn Pipelines and ColumnTransformers make preprocessing reproducible and safe for cross-validation
- Power transforms (Box-Cox, Yeo-Johnson) can make skewed distributions more Gaussian, improving the performance of models that assume normality
