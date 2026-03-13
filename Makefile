.PHONY: help prereqs check-python check-poetry install pre-commit-install jupyter list-notebooks list-chapters clean lint lint-fix format format-check type-check check

# Shorthand: CH=01 expands to CHAPTER=chapter_01
ifdef CH
CHAPTER := chapter_$(CH)
endif

# Default target
help:
	@echo "Python for Data Science Notes - Makefile Commands"
	@echo ""
	@echo "Setup:"
	@echo "  make prereqs             Check prerequisites (Python, Poetry)"
	@echo "  make install             Install project dependencies with Poetry"
	@echo "  make pre-commit-install  Install pre-commit git hooks"
	@echo ""
	@echo "Notebooks:"
	@echo "  make jupyter CH=01                   Open chapter notebooks in Jupyter Lab"
	@echo "  make list-notebooks CH=01            List notebooks in a chapter"
	@echo "  make list-chapters                   List all available chapters"
	@echo ""
	@echo "Code Quality:"
	@echo "  make lint                Run ruff linter"
	@echo "  make lint-fix            Run ruff with auto-fix"
	@echo "  make format-check        Check code formatting"
	@echo "  make format              Auto-format code"
	@echo "  make type-check          Run mypy type checker"
	@echo "  make check               Run all checks (lint, format, types)"
	@echo ""
	@echo "Utilities:"
	@echo "  make clean               Remove generated files, cache, etc."

# ============================================================================
# Prerequisites
# ============================================================================

prereqs: check-python check-poetry
	@echo ""
	@echo "All prerequisites satisfied"

check-python:
	@command -v python3 >/dev/null 2>&1 || { echo "Python 3 is required but not installed."; exit 1; }
	@python3 --version | grep -E "3\.1[2-9]|3\.[2-9][0-9]" >/dev/null || { echo "Python 3.12+ is required"; exit 1; }
	@echo "Python 3.12+ installed: $$(python3 --version)"

check-poetry:
	@command -v poetry >/dev/null 2>&1 || { \
		echo "Installing Poetry..."; \
		curl -sSL https://install.python-poetry.org | python3 -; \
		export PATH="$$HOME/.local/bin:$$PATH"; \
	}
	@echo "Poetry installed: $$(poetry --version)"

# ============================================================================
# Installation
# ============================================================================

install: prereqs
	@echo "Installing dependencies with Poetry..."
	poetry install
	@echo "Dependencies installed"

pre-commit-install:
	@echo "Installing pre-commit hooks..."
	poetry run pre-commit install
	@echo "Pre-commit hooks installed"

# ============================================================================
# Notebooks
# ============================================================================

jupyter:
	@if [ -z "$(CHAPTER)" ]; then \
		echo "Usage: make jupyter CH=01"; \
		exit 1; \
	fi
	@if [ -d "src/$(CHAPTER)" ]; then \
		poetry run jupyter lab src/$(CHAPTER)/; \
	else \
		echo "Chapter '$(CHAPTER)' not found"; \
		exit 1; \
	fi

# ============================================================================
# Code Quality
# ============================================================================

lint:
	@echo "Running ruff linter..."
	poetry run ruff check src/ tests/

lint-fix:
	@echo "Running ruff with auto-fixes..."
	poetry run ruff check --fix src/ tests/

format-check:
	@echo "Checking code formatting..."
	poetry run ruff format --check src/ tests/

format:
	@echo "Formatting code..."
	poetry run ruff format src/ tests/

type-check:
	@echo "Running mypy type checker..."
	poetry run mypy src/ --ignore-missing-imports

check: lint format-check type-check
	@echo ""
	@echo "All checks passed"

# ============================================================================
# Utilities
# ============================================================================

list-chapters:
	@echo "Available chapters:"
	@ls -d src/chapter_* 2>/dev/null | sed 's|src/||' | sort || echo "No chapters found"

list-notebooks:
	@if [ -z "$(CHAPTER)" ]; then \
		echo "Usage: make list-notebooks CH=01"; \
		exit 1; \
	fi
	@if [ -d "src/$(CHAPTER)" ]; then \
		echo "Notebooks in $(CHAPTER):"; \
		find src/$(CHAPTER) -name "*.ipynb" | sed 's|src/$(CHAPTER)/||' | sort; \
	else \
		echo "Chapter '$(CHAPTER)' not found"; \
		exit 1; \
	fi

clean:
	@echo "Cleaning generated files..."
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".mypy_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".ruff_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name ".DS_Store" -delete
	find . -type d -name ".ipynb_checkpoints" -exec rm -rf {} + 2>/dev/null || true
	@echo "Cleanup complete"
