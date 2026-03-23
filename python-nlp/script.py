import nltk
from nltk.tokenize import word_tokenize

nltk.download('punkt')

with open("sample.txt", "r") as file:
    text = file.read()

words = word_tokenize(text)

print(words)