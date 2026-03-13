# Chapter 13: Tree-Based Methods

Tree-based methods are among the most versatile and widely used algorithms in modern machine learning. A decision tree recursively partitions the feature space by asking simple yes/no questions, producing an interpretable model that mirrors human decision-making. However, single trees tend to overfit. Ensemble methods overcome this limitation by combining many trees: random forests average predictions from independently grown trees trained on bootstrap samples with random feature subsets, while gradient boosting builds trees sequentially so that each new tree corrects the errors of its predecessors. This chapter covers the theory and practice of all three approaches, from splitting criteria and pruning to hyperparameter tuning and model comparison.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_decision_trees.ipynb` | Recursive binary splitting, Gini impurity vs entropy, MSE reduction for regression, DecisionTreeClassifier and DecisionTreeRegressor, tree visualisation with plot_tree and export_text, feature importance, controlling complexity (max_depth, min_samples_split, min_samples_leaf, max_features), overfitting in deep trees, cost-complexity pruning (ccp_alpha), decision boundary visualisation |
| 2 | `02_random_forests.ipynb` | Ensemble methods motivation, bagging (bootstrap aggregating), random feature subsets, RandomForestClassifier and RandomForestRegressor, key hyperparameters (n_estimators, max_features, max_depth, bootstrap), out-of-bag score, feature importance (impurity-based and permutation), single tree vs forest comparison, effect of n_estimators on performance, practical classification example |
| 3 | `03_boosting.ipynb` | Boosting concept (sequential learning from mistakes), AdaBoost (sample weight adjustment), gradient boosting (fitting residuals), GradientBoostingClassifier and GradientBoostingRegressor, learning rate and n_estimators tradeoff, staged predictions, HistGradientBoosting, XGBoost/LightGBM/CatBoost overview, decision tree vs random forest vs gradient boosting comparison |

## Key Concepts

- Decision trees partition the feature space using recursive binary splits chosen to maximise a purity measure (Gini impurity or entropy for classification, MSE reduction for regression)
- Single trees are highly interpretable but prone to overfitting; pruning and depth constraints help control complexity
- Bagging reduces variance by training many trees on bootstrap samples and averaging their predictions; random forests extend this by also randomising the feature subset at each split
- The out-of-bag (OOB) score provides a free validation estimate without needing a separate holdout set
- Boosting reduces bias by building trees sequentially, with each tree focusing on the examples that previous trees got wrong
- Gradient boosting fits each new tree to the negative gradient (residuals) of the loss function, enabling flexible loss functions beyond squared error
- The learning rate controls the contribution of each tree in boosting; smaller rates require more trees but often generalise better
- Feature importance can be measured via mean decrease in impurity (fast but biased toward high-cardinality features) or permutation importance (more reliable but slower)
