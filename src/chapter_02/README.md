# Chapter 02: NumPy

NumPy (Numerical Python) is the foundational library for numerical computing in Python. It provides fast, memory-efficient multidimensional arrays and a comprehensive set of mathematical functions. Nearly every data science library in the Python ecosystem is built on top of NumPy.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_arrays.ipynb` | Why NumPy (lists vs arrays), creating arrays from lists, `np.arange`, `np.zeros`, `np.ones`, `np.linspace`, `np.eye`, `np.full`, random number generation (`rand`, `randn`, `randint`, `seed`), array attributes (`shape`, `dtype`, `ndim`, `size`, `itemsize`), reshaping, data types |
| 2 | `02_indexing_and_selection.ipynb` | 1D indexing and slicing, 2D indexing (row, col), fancy indexing, boolean/conditional selection, setting values with indexing, views vs copies, `np.where`, working with NaN values |
| 3 | `03_operations.ipynb` | Element-wise arithmetic, universal functions (`np.sqrt`, `np.exp`, `np.log`, `np.sin`, `np.abs`), broadcasting rules, aggregation functions (`sum`, `mean`, `std`, `min`, `max`, `argmin`, `argmax`) along axes, comparison operators, boolean operations (`any`, `all`), sorting (`np.sort`, `np.argsort`), stacking and splitting arrays |

## Key Concepts

- NumPy arrays are homogeneous (single data type) and stored in contiguous memory, making them 10-100x faster than Python lists for numerical operations
- Vectorised operations eliminate the need for explicit Python loops
- Broadcasting allows operations between arrays of different (but compatible) shapes
- Slicing returns views (shared memory), while fancy and boolean indexing return copies
- The `axis` parameter controls the direction of aggregation: `axis=0` operates down rows, `axis=1` across columns
- `np.where` provides vectorised conditional logic (like a ternary operator for arrays)
- NaN-safe functions (`np.nansum`, `np.nanmean`, etc.) handle missing data gracefully
