import requests
from bs4 import BeautifulSoup
import os

url = "https://en.wikipedia.org/wiki/Cat"

print("Starting scraper...")

headers = {
    "User-Agent": "Mozilla/5.0"
}

response = requests.get(url, headers=headers)
print("Status code:", response.status_code)

soup = BeautifulSoup(response.text, "html.parser")

paragraphs = soup.select("div.mw-parser-output > p")
print("Paragraphs found:", len(paragraphs))

file_path = os.path.join(os.path.dirname(__file__), "wiki_output.txt")

with open(file_path, "w", encoding="utf-8") as f:
    for p in paragraphs:
        text = p.get_text().strip()
        if text:
            print("Writing:", text[:60])
            f.write(text + "\n\n")

print("Done! File saved at:", file_path)