# Chapter 15: Natural Language Processing

Natural Language Processing (NLP) bridges the gap between raw human text and the numerical representations that machine learning algorithms require. The core challenge is converting variable-length, unstructured text into fixed-length feature vectors while preserving the information that matters for the task at hand. This chapter covers the essential text preprocessing pipeline, two foundational feature extraction methods (Bag of Words and TF-IDF), and supervised text classification using Naive Bayes, logistic regression, and support vector machines.

## Notebooks

| # | Notebook | Topics |
|---|----------|--------|
| 1 | `01_text_preprocessing.ipynb` | NLP overview, text preprocessing pipeline (lowercase, punctuation removal, tokenization, stop words, stemming, lemmatization), Bag of Words with CountVectorizer, visualizing word frequencies, TF-IDF with TfidfVectorizer, comparing BoW vs TF-IDF, n-grams and the ngram_range parameter, sparse matrices, vocabulary control with max_features / min_df / max_df, practical document preprocessing example |
| 2 | `02_text_classification.ipynb` | Text classification as supervised learning, Bayes' theorem and the naive independence assumption, MultinomialNB for text, TfidfVectorizer to MultinomialNB pipeline, sklearn Pipeline for text classification, sentiment analysis on synthetic data, confusion matrix and classification report, comparing Naive Bayes vs Logistic Regression vs SVM on text, GridSearchCV for joint vectorizer-classifier tuning, most informative features analysis, end-to-end NLP workflow |

## Key Concepts

- Text must be converted to numerical features before any ML algorithm can process it; the two most common approaches are Bag of Words (raw counts) and TF-IDF (frequency weighted by document rarity)
- The preprocessing pipeline (lowercasing, punctuation removal, tokenization, stop word removal, stemming/lemmatization) removes noise and reduces vocabulary size so models can focus on meaningful patterns
- CountVectorizer produces a document-term matrix of raw word counts; TfidfVectorizer additionally down-weights terms that appear in many documents, highlighting discriminative words
- N-grams capture short word sequences (bigrams, trigrams) that carry meaning lost by single-token representations, such as "not good" vs "good"
- Text feature matrices are extremely sparse (most entries are zero) and are stored as scipy sparse matrices for memory efficiency
- Naive Bayes classifiers are fast, simple, and surprisingly effective for text because the high-dimensional, sparse nature of text data mitigates the naive independence assumption
- Scikit-learn's Pipeline object chains a vectorizer and a classifier into a single estimator, enabling clean code and correct cross-validation without data leakage
- GridSearchCV can tune parameters across both the vectorizer (ngram_range, max_features, max_df) and the classifier (alpha, C) simultaneously
- Inspecting the highest-weighted features (coefficients) reveals which words the model considers most informative for each class
