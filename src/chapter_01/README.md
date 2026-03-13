# Chapter 01: Python Crash Course

A concise review of core Python features needed for data science work. These notebooks assume basic programming familiarity and focus on the language constructs that appear most often when working with data — types, control flow, and functions.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_data_types.ipynb` | Numbers (int, float, complex), strings (methods, f-strings, slicing), booleans, lists (methods, slicing, nesting), tuples, sets, dictionaries (methods, nesting), type conversion, comparison operators, basic I/O |
| 2 | `02_control_flow.ipynb` | if/elif/else, for loops, while loops, break/continue/pass, range(), enumerate(), zip(), list/dict/set comprehensions, nested comprehensions, ternary expressions |
| 3 | `03_functions.ipynb` | def syntax, parameters (*args, **kwargs), return values, scope (LEGB rule), lambda functions, map(), filter(), sorted() with key, nested functions, docstrings, type hints |

## Key Concepts

- Python is dynamically typed — variables do not have fixed types, but values do
- Strings, tuples, and frozensets are immutable; lists, dicts, and sets are mutable
- Comprehensions are the idiomatic (and often faster) alternative to loop-and-append patterns
- The LEGB rule governs how Python resolves variable names across scopes
- Type hints improve code readability and enable static analysis, but are not enforced at runtime
- Functions are first-class objects — they can be passed as arguments, returned from other functions, and assigned to variables
