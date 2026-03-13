# Chapter 05: Seaborn

Seaborn is a statistical data visualization library built on top of Matplotlib. It provides a high-level interface for drawing informative and attractive graphics, with sensible defaults and tight integration with pandas DataFrames. Where Matplotlib gives you full control over every pixel, Seaborn lets you express complex visualizations in a few lines by thinking in terms of **variables and relationships** rather than lines and patches.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_scatter_plots.ipynb` | `sns.set_theme()`/`sns.set_style()`, `sns.scatterplot()` with `hue`/`size`/`style`, `sns.relplot(kind='scatter')` for faceted scatter, `sns.lmplot()` with regression lines, `sns.jointplot()` with marginal distributions, `sns.pairplot()` for all pairwise relationships |
| 2 | `02_distribution_plots.ipynb` | `sns.histplot()` with bins/KDE overlay/`hue`/`multiple`, `sns.kdeplot()` with bandwidth control and 2D density, `sns.ecdfplot()`, `sns.rugplot()`, `sns.displot()` figure-level interface (`kind='hist'`/`'kde'`/`'ecdf'`) |
| 3 | `03_categorical_plots.ipynb` | `sns.countplot()`, `sns.barplot()` with means and CI, `sns.boxplot()` quartiles and outliers, `sns.violinplot()` with `split`, `sns.swarmplot()`/`sns.stripplot()`, `sns.catplot()` figure-level categorical, combining violin + swarm overlays |
| 4 | `04_comparison_plots.ipynb` | `sns.lineplot()` for time series with CI bands, `sns.pointplot()` for interaction effects, grouped `barplot`/`boxplot` with `hue`, `FacetGrid` via `relplot()`/`catplot()` with `col`/`row`, practical multi-group comparisons |
| 5 | `05_grids.ipynb` | `sns.FacetGrid` with `map()`/`map_dataframe()`, `sns.PairGrid` with `map_diag()`/`map_upper()`/`map_lower()`, `sns.JointGrid` with `plot_joint()`/`plot_marginals()`, customizing titles, axes, and legends |
| 6 | `06_matrix_plots.ipynb` | `sns.heatmap()` for correlation matrices and pivot tables, customization (`annot`, `fmt`, `cmap`, `mask`, `linewidths`), `sns.clustermap()` with hierarchical clustering, practical correlation analysis workflow |

## Key Concepts

- Seaborn has two tiers of functions: **axes-level** (draw on a single `Axes`) and **figure-level** (create their own `Figure` via `FacetGrid`, `PairGrid`, or `JointGrid`)
- Figure-level functions (`relplot`, `catplot`, `displot`) support `col` and `row` for faceted small multiples — the cleanest way to compare across groups
- The `hue`, `size`, and `style` parameters encode additional variables into a single plot without creating separate panels
- Grid classes (`FacetGrid`, `PairGrid`, `JointGrid`) provide full customization when the convenience wrappers are not enough
- Use `sns.set_theme()` and `sns.set_style()` to control the global look; the five built-in styles are `darkgrid`, `whitegrid`, `dark`, `white`, and `ticks`
- Seaborn ships with built-in datasets (`tips`, `penguins`, `flights`, `iris`, `titanic`, etc.) accessible via `sns.load_dataset()`
- Seaborn and Matplotlib are complementary — Seaborn creates the high-level plot, and Matplotlib handles any fine-grained adjustments
