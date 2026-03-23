# adventure_nlp.py

# adventure_nlp.py

import nltk
from nltk import word_tokenize
from nltk.text import Text
from nltk.probability import FreqDist
import matplotlib.pyplot as plt

nltk.download('punkt')

with open("ATE1.txt", "r", encoding="utf-8") as f:
    text = f.read()

tokens = word_tokenize(text)

adventure_text = Text(tokens)

print("\nWords similar to 'Finn':")
adventure_text.similar("Finn")

fdist = FreqDist(tokens)

fdist.plot(30, cumulative=False)
plt.show()

words_of_interest = ["Finn", "Jake", "Princess", "Ice"]
for word in words_of_interest:
    print(f"{word} appears {fdist[word]} times")