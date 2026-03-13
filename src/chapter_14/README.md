# Chapter 14: Unsupervised Learning

Unsupervised learning discovers hidden structure in data **without labels**. This chapter covers the two main families of unsupervised techniques: **clustering** (grouping similar data points) and **dimensionality reduction** (compressing features while preserving information).

## Notebooks

| Notebook | Topics |
|----------|--------|
| [01 - K-Means Clustering](01_kmeans_clustering.ipynb) | Unsupervised learning overview, K-Means algorithm step by step, KMeans in sklearn, elbow method, silhouette score and plots, K-Means limitations, K-Means++ initialisation, Mini-Batch K-Means, colour quantisation example |
| [02 - Hierarchical Clustering and DBSCAN](02_hierarchical_and_dbscan.ipynb) | Agglomerative clustering, linkage methods (ward, complete, average, single), dendrograms with scipy, DBSCAN (core/border/noise points, eps, min_samples), comparing K-Means vs Hierarchical vs DBSCAN on different data shapes |
| [03 - Dimensionality Reduction](03_dimensionality_reduction.ipynb) | Curse of dimensionality, PCA (explained variance, scree plots, feature loadings, biplots), PCA for visualisation (Iris 4D to 2D), PCA for noise reduction, t-SNE for nonlinear visualisation, PCA vs t-SNE on Digits dataset, perplexity tuning |

## Key Libraries

- **scikit-learn**: `KMeans`, `MiniBatchKMeans`, `AgglomerativeClustering`, `DBSCAN`, `PCA`, `TSNE`, `silhouette_score`, `silhouette_samples`
- **scipy**: `scipy.cluster.hierarchy.dendrogram`, `linkage`, `fcluster`
- **Data generators**: `make_blobs`, `make_moons`, `make_circles` for synthetic datasets; `load_iris`, `load_digits` for real datasets
- **Visualisation**: `matplotlib`, `seaborn`

## Key Concepts

### Clustering
- **K-Means**: iterative centroid-based algorithm; fast but assumes spherical clusters; requires specifying K
- **Hierarchical (Agglomerative)**: bottom-up merging recorded in a dendrogram; choose K after fitting by cutting the tree
- **DBSCAN**: density-based; finds arbitrary-shaped clusters; automatic outlier detection; no need to specify K

### Dimensionality Reduction
- **PCA**: linear projection onto directions of maximum variance; useful for preprocessing, noise reduction, and visualisation
- **t-SNE**: nonlinear embedding that preserves local neighbourhood structure; best for 2D/3D visualisation of complex data

## Prerequisites

- Chapter 07: Machine Learning fundamentals (train/test split, scaling)
- Chapter 04-05: Matplotlib and Seaborn for visualisation
- Chapter 02: NumPy array operations
