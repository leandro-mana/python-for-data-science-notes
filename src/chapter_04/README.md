# Chapter 04: Matplotlib

Matplotlib is the foundational visualization library in the Python data science stack. It provides both a quick functional interface (`pyplot`) for exploratory plots and a powerful object-oriented interface for full control over every element of a figure. These notebooks progress from basic line plots through to advanced multi-type visualizations and 3D plotting.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_basics.ipynb` | `plt.plot()` basics, `%matplotlib inline`, `plt.xlabel()`/`plt.ylabel()`/`plt.title()`, axis limits (`xlim`, `ylim`), multiple lines, `plt.legend()`, format strings, `plt.savefig()` |
| 2 | `02_figures.ipynb` | Object-oriented interface (`fig, ax = plt.subplots()`), `fig.add_axes()` for manual placement, `ax.set_xlabel()`/`ax.set_title()`, `figsize`, DPI, `fig.tight_layout()`, functional vs OO comparison |
| 3 | `03_subplots.ipynb` | `plt.subplots(nrows, ncols)`, 2D axes indexing, `axes.flat`, `fig.add_subplot()`, shared axes (`sharex`, `sharey`), `GridSpec` for complex layouts, spacing adjustment, hiding unused axes |
| 4 | `04_styling.ipynb` | Line styles and width, color specification (named, hex, RGB), marker styles, `plt.style.use()` and built-in themes, legend placement (`loc`, `bbox_to_anchor`), grid lines, annotations (`ax.annotate()`), text (`ax.text()`), colorbars and colormaps |
| 5 | `05_advanced.ipynb` | Scatter plots, bar charts (vertical, horizontal, grouped), histograms, pie charts, box plots, `fill_between()`, twin axes (`ax.twinx()`), log scale, custom ticks, stacked area charts, error bars, 3D plotting intro, Matplotlib vs Seaborn guidance |

## Key Concepts

- Matplotlib has two interfaces: the functional `pyplot` API for quick plots and the object-oriented API (`Figure`/`Axes`) for full control
- A `Figure` is the entire canvas; an `Axes` is a single plot area within it — one figure can contain many axes
- The OO approach (`fig, ax = plt.subplots()`) is preferred for anything beyond throwaway exploratory plots
- `GridSpec` enables complex multi-panel layouts where axes can span multiple grid cells
- Style sheets (`plt.style.use()`) apply global visual themes; `viridis` is the recommended default colormap for its perceptual uniformity
- Always call `plt.savefig()` before `plt.show()`, as `show()` clears the current figure
- Seaborn builds on Matplotlib for statistical graphics — the two are complementary, not competing
