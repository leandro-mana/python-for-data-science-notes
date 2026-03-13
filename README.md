# Python for Data Science Notes

![Python](https://img.shields.io/badge/Python-3.12+-blue?logo=python&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-F37626?logo=jupyter&logoColor=white)
![Notebooks](https://img.shields.io/badge/Notebooks-30-green)
![Chapters](https://img.shields.io/badge/Chapters-6-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

Study notes and interactive Jupyter notebooks for Python Data Science — from Python fundamentals through NumPy, Pandas, Matplotlib, and Seaborn. All content is delivered through executable Jupyter notebooks designed for self-paced learning.

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
│   └── chapter_06/          # Capstone Project
├── tests/                   # Pytest test suite
├── docs/                    # Reference books (gitignored)
├── Makefile                 # Automation commands
└── pyproject.toml           # Poetry configuration
```

## Chapters

| Chapter | Notebooks | Topics |
| --- | --- | --- |
| **01 - Python Crash Course** | 3 | Data types, strings, lists, dicts, sets, tuples, control flow, loops, comprehensions, functions, lambda, map/filter |
| **02 - NumPy** | 3 | Array creation, indexing and selection, broadcasting, universal functions, aggregations, sorting, stacking |
| **03 - Pandas** | 11 | Series, DataFrames, filtering, useful methods, missing data, groupby, combining DataFrames, text and time methods, I/O, pivot tables |
| **04 - Matplotlib** | 5 | pyplot basics, OOP figures, subplots, styling and annotations, advanced plot types (scatter, bar, histogram, box, 3D) |
| **05 - Seaborn** | 6 | Scatter/relational plots, distributions, categorical plots, comparisons, grids (FacetGrid, PairGrid), matrix plots (heatmaps) |
| **06 - Capstone Project** | 2 | End-to-end data analysis: exploration, manipulation, and visualization of the Tips dataset |

## Running Notebooks

```bash
# Open a specific chapter in Jupyter Lab
make jupyter CH=03

# List all chapters
make list-chapters

# List notebooks in a chapter
make list-notebooks CH=02
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
- [NumPy Documentation](https://numpy.org/doc/stable/)
- [Pandas Documentation](https://pandas.pydata.org/docs/)
- [Matplotlib Documentation](https://matplotlib.org/stable/)
- [Seaborn Documentation](https://seaborn.pydata.org/)

## Author

[Leandro Mana](https://www.linkedin.com/in/leandro-mana/)

## License

MIT
