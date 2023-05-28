---
noteId: "4006539007a811edbdef876a303e782a"
tags: []

---

# Python Notes for Machine Learning and Data Science

The purpose of this repository is to compile a set of notes related with the different aspects and toolings of Python applied on Data Science

### Requirements
- `Python3.10.0` by using [pyenv](https://realpython.com/intro-to-pyenv/)
    - OR installing a fixed [version](https://docs.python-guide.org/)

### How To

Setup the Python Virtual Environment via [pipenv](https://realpython.com/pipenv-guide/)
```bash
# 1 - Check that Python3.10 is installed, then install pipenv
python -V
pip install --upgrade pip && pip install pipenv

# 2 - Create the virtual environment
pipenv install --dev

# 3 - Initialize Jupyter Lab
pipenv run jupyter lab

# 4 - OPTIONAL - Virtual environment shell
pipenv shell

# NOTE: To re-create the virtual environment
pipenv --rm
pip install --dev
```

### Topics
- [book](docs/ISLRv2.pdf)
- Machine Learning Types:
    - Supervised Learning:
        - Use historical and labeled data, know results data from the past, the ML model predicts a value
        - Categorical Value to predict, Classification Task, predict an assigned category:
            - Cancerous vs Benign Tumor
            - Fulfillment vs Credit Default
            - Assigning Image Category, handwriting Recognition
        - Continuous values to predict, Regression Task:
            - Future Prices
            - Electricity Loads
            - Test Scores
    - unsupervised Learning:
        - Applied to unlabeled data, the ML model discovers possible patterns in the data
        - Example, clustering customers into separate groups based off their behaviors features
        - Major downside is because there was no historical "Correct" label, its much complex to evaluate performance

- Supervised Learning ML Process on the example of determine the price of a house to be sell:
    - Start by collecting and organizing a data set based on history
    - get a product that determine the price of the house
    - Input house features
    - Output predicted selling price
    - X -> Features (Area, Bedrooms, bathrooms)  | Y -> Label (price)
    - Split data into training and test set, this is to evaluate the performance on known data, then compare the results
    - If the performance on the Test set is not good enough, then adjust the Hyper parameters, repeat the process