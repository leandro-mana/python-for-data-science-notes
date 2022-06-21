# Python Notes for Machine Learning and Data Science

### Requirements
- [Python3.9](https://docs.python-guide.org/)

### How To

Setup the Python Virtual Environment
```bash
# 1 - Check that Python3.9 is installed
python -V

# 2 - Create the virtual environment
python -m venv venv

# 3 - Initialize the virtual environment
source venv/bin/activate

# 4 - Update pip to avoid warnings on the versions
python -m pip install --upgrade pip

# 5 - Install dependencies
pip install -r requirements.txt

# 6 - Initialize Jupyter Lab
jupiter-lab

# 7 - To quite the virtual environment
deactivate

# NOTE: Follow steps 2-to-5 any time that the venv needs to created
```

### Notes
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
            - Eletricity Loads
            - Test Scores
    - unsupervised Learning:
        - Applied to unlabeled data, the ML model discovers possible patterns in the data
        - Example, clustering customers into separate groups based off their behaviours features
        - Major downside is because there was no historical "Correct" label, its much complex to evaluate performance

- Supervised Learning ML Process on the example of determine the price of a house to be sell:
    - Start by collecting and organizing a data set based on history
    - get a product that determine the price of the house
    - Input house features
    - Ouput predicted selling price
    - X -> Features (Area, Bedrooms, bathrooms)  | Y -> Label (price)
    - Split data into training and test set, this is to evaluate the performance on known data, then compare the results
    - If the performance on the Test set is not good enough, then adjust the Hyper parameters, repeat the process