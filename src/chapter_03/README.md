# Chapter 03: Pandas

Pandas is the core library for data manipulation and analysis in Python. Built on top of NumPy, it provides two primary data structures — **Series** (1D) and **DataFrame** (2D) — along with a rich set of methods for loading, cleaning, transforming, aggregating, and reshaping tabular data.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_series.ipynb` | Creating Series from lists, dicts, NumPy arrays, named Series (`name` attribute), label-based and position-based indexing, `.loc` and `.iloc`, operations between Series (index alignment, NaN handling), scalar broadcasting |
| 2 | `02_dataframes.ipynb` | Creating DataFrames from dicts, lists, NumPy arrays, column selection (single and multiple), adding/removing columns, row selection with `.loc` and `.iloc`, `.set_index()` and `.reset_index()`, `info()`, `describe()`, `dtypes`, `shape` |
| 3 | `03_conditional_filtering.ipynb` | Boolean conditions on columns, filtering with single/multiple conditions, `&` `|` `~` operators (with parentheses), `.isin()`, `.between()`, `.query()` method, assigning filtered results with `.copy()` |
| 4 | `04_useful_methods.ipynb` | `apply()` on columns and rows, `map()` for element-wise transforms, `sort_values()`, `sort_index()`, `value_counts()`, `nunique()`, `unique()`, `.duplicated()`, `.drop_duplicates()`, `.replace()`, `.rename()`, `.sample()`, `.nlargest()`, `.nsmallest()`, `.clip()`, `.abs()` |
| 5 | `05_missing_data.ipynb` | `NaN`, `None`, `pd.NA`, `isnull()`/`isna()`, `notnull()`/`notna()`, `dropna()` (axis, how, thresh, subset), `fillna()` (scalar, ffill/bfill, dict per column), `interpolate()`, impact on aggregations |
| 6 | `06_groupby_and_aggregation.ipynb` | Split-apply-combine concept, `.groupby()` basics, `.agg()` with single/multiple functions, `.transform()` vs `.agg()`, multi-column groupby, `.describe()` on groups, named aggregation with `pd.NamedAgg` |
| 7 | `07_combining_dataframes.ipynb` | `pd.concat()` (axis=0, axis=1, keys, ignore_index), `pd.merge()` (inner, outer, left, right joins), `left_on`/`right_on`, `left_index`/`right_index`, `.join()` shorthand, `suffixes` for duplicate columns |
| 8 | `08_text_methods.ipynb` | `.str` accessor, case conversion (`.lower()`, `.upper()`, `.title()`), `.strip()`, `.contains()`, `.startswith()`, `.endswith()`, `.replace()`, `.split()`, `.get()`, `.len()`, `.count()`, `.extract()` with regex, `.cat()` for joining |
| 9 | `09_time_methods.ipynb` | `pd.to_datetime()`, DatetimeIndex properties (`.year`, `.month`, `.day`, `.dayofweek`), Timedelta arithmetic, `.resample()`, `.dt` accessor, `pd.date_range()`, time-based indexing and slicing |
| 10 | `10_inputs_and_outputs.ipynb` | CSV (`read_csv`/`to_csv`), Excel (`read_excel`/`to_excel`), HTML (`read_html`), Parquet (`read_parquet`/`to_parquet`), SQL (`read_sql` with SQLAlchemy) |
| 11 | `11_pivot_tables.ipynb` | `.pivot()` vs `.pivot_table()`, `pivot_table()` with values/index/columns/aggfunc, `margins`, `.melt()` for unpivoting, `.stack()` and `.unstack()` |

## Key Concepts

- A **Series** is a one-dimensional labelled array; a **DataFrame** is a two-dimensional table where each column is a Series
- **Index alignment**: arithmetic between Series/DataFrames automatically aligns on index labels, producing NaN where labels do not match
- **Conditional filtering** uses boolean masks with bitwise operators (`&`, `|`, `~`) — always wrap conditions in parentheses
- **GroupBy** implements the split-apply-combine pattern; `.agg()` reduces, `.transform()` broadcasts back to the original shape
- **Merging** works like SQL joins: `inner`, `outer`, `left`, `right` — use `on`, `left_on`/`right_on`, or index-based joins
- **Missing data** is represented by `np.nan`, `None`, or `pd.NA`; aggregations skip NaN by default
- The `.str` and `.dt` accessors provide vectorised string and datetime operations on Series
- **Pivot tables** reshape long data into wide format with aggregation; `.melt()` reverses the operation
- **Parquet** is preferred over CSV for large datasets due to speed, compression, and type preservation
