# Python for Data Science Notes

![Python](https://img.shields.io/badge/Python-3.12+-blue?logo=python&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-F37626?logo=jupyter&logoColor=white)
![scikit--learn](https://img.shields.io/badge/scikit--learn-1.5+-F7931E?logo=scikit-learn&logoColor=white)
![Notebooks](https://img.shields.io/badge/Notebooks-56-green)
![Chapters](https://img.shields.io/badge/Chapters-16-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

Study notes and interactive Jupyter notebooks for Python Data Science and Machine Learning — from Python fundamentals through NumPy, Pandas, Matplotlib, Seaborn, and Scikit-Learn. All content is delivered through executable Jupyter notebooks designed for self-paced learning.

## Requirements

- [Python 3.12+](https://www.python.org/downloads/)
- [Poetry](https://python-poetry.org/docs/#installation)

## Quick Start

```bash
# 1. Install dependencies
make install

# 2. Open notebooks for a chapter
make jupyter CH=01
```

## Project Structure

```text
python-for-data-science-notes/
├── src/
│   ├── chapter_01/          # Python Crash Course
│   ├── chapter_02/          # NumPy
│   ├── chapter_03/          # Pandas
│   ├── chapter_04/          # Matplotlib
│   ├── chapter_05/          # Seaborn
│   ├── chapter_06/          # Capstone Project (Data Analysis)
│   ├── chapter_07/          # Overview of Machine Learning
│   ├── chapter_08/          # Linear Regression
│   ├── chapter_09/          # Feature Engineering
│   ├── chapter_10/          # Logistic Regression
│   ├── chapter_11/          # K-Nearest Neighbors
│   ├── chapter_12/          # Support Vector Machines
│   ├── chapter_13/          # Tree-Based Methods
│   ├── chapter_14/          # Unsupervised Learning
│   ├── chapter_15/          # Natural Language Processing
│   └── chapter_16/          # ML Capstone Project
├── tests/                   # Pytest test suite
├── docs/                    # Reference books (gitignored)
├── Makefile                 # Automation commands
└── pyproject.toml           # Poetry configuration
```

## Chapters

### Part I: Python & Data Science Fundamentals

| Chapter | Notebooks | Topics |
| --- | --- | --- |
| **01 - Python Crash Course** | 3 | Data types, strings, lists, dicts, sets, tuples, control flow, loops, comprehensions, functions, lambda, map/filter |
| **02 - NumPy** | 3 | Array creation, indexing and selection, broadcasting, universal functions, aggregations, sorting, stacking |
| **03 - Pandas** | 11 | Series, DataFrames, filtering, useful methods, missing data, groupby, combining DataFrames, text and time methods, I/O, pivot tables |
| **04 - Matplotlib** | 5 | pyplot basics, OOP figures, subplots, styling and annotations, advanced plot types (scatter, bar, histogram, box, 3D) |
| **05 - Seaborn** | 6 | Scatter/relational plots, distributions, categorical plots, comparisons, grids (FacetGrid, PairGrid), matrix plots (heatmaps) |
| **06 - Capstone Project** | 2 | End-to-end data analysis: exploration, manipulation, and visualization of the Tips dataset |

### Part II: Machine Learning with Scikit-Learn

| Chapter | Notebooks | Topics |
| --- | --- | --- |
| **07 - ML Overview & Scikit-Learn** | 3 | What is ML, supervised vs unsupervised, the sklearn API, train/test split, cross-validation, evaluation metrics |
| **08 - Linear Regression** | 3 | Simple and multiple regression, polynomial features, regularization (Ridge, Lasso, ElasticNet), cross-validation |
| **09 - Feature Engineering** | 3 | Scaling, encoding, outlier handling, power transforms, pipelines, ColumnTransformer, feature selection |
| **10 - Logistic Regression** | 3 | Sigmoid function, decision boundaries, ROC/AUC, precision-recall, multiclass (OvR, softmax) |
| **11 - K-Nearest Neighbors** | 2 | Distance metrics, choosing K, classification and regression, curse of dimensionality |
| **12 - Support Vector Machines** | 2 | Maximum margin, kernel trick (linear, RBF, polynomial), C and gamma tuning, SVR |
| **13 - Tree-Based Methods** | 3 | Decision trees, random forests, AdaBoost, gradient boosting, feature importance |
| **14 - Unsupervised Learning** | 3 | K-Means, hierarchical clustering, DBSCAN, PCA, t-SNE |
| **15 - Natural Language Processing** | 2 | Text preprocessing, Bag of Words, TF-IDF, Naive Bayes, text classification pipelines |
| **16 - ML Capstone Project** | 2 | End-to-end ML: Wine dataset classification with model comparison and hyperparameter tuning |

## Running Notebooks

```bash
# Open a specific chapter in Jupyter Lab
make jupyter CH=08

# List all chapters
make list-chapters

# List notebooks in a chapter
make list-notebooks CH=14
```

## Code Quality

```bash
make lint           # Ruff linter
make format         # Auto-format
make type-check     # mypy
make check          # All checks
```

## Development

See [CONTRIBUTING.md](CONTRIBUTING.md) for workflow, commit conventions, and code style guidelines.

## References

- [Jose Portilla's Python for Data Science and Machine Learning courses](https://www.udemy.com/user/joseportilla/) (Udemy)
- [Python Data Science Handbook, 2nd Edition](https://jakevdp.github.io/PythonDataScienceHandbook/) — Jake VanderPlas (O'Reilly, 2023)
- [An Introduction to Statistical Learning, 2nd Edition](https://www.statlearning.com/) — James, Witten, Hastie, Tibshirani
- [Scikit-Learn Documentation](https://scikit-learn.org/stable/)
- [NumPy Documentation](https://numpy.org/doc/stable/)
- [Pandas Documentation](https://pandas.pydata.org/docs/)
- [Matplotlib Documentation](https://matplotlib.org/stable/)
- [Seaborn Documentation](https://seaborn.pydata.org/)

## Author

[Leandro Mana](https://www.linkedin.com/in/leandro-mana/)

## License

MIT
