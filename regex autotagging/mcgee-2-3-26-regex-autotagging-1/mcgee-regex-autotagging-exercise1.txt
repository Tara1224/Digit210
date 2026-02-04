Regex Exercise 1 – Movie Data Copy

Source file: mcgee_moviedata.txt
Destination file: movieData.xml

Steps:
Step 1: Escape ampersands
Find: &
Replace: &amp;

Step 2: Escape less-than signs
Find: <
Replace: &lt;
Result: No matches found.

Step 3: Escape greater-than signs
Find: >
Replace: &gt;
Result: No matches found.

Step 4: Wrap each movie line in <movie> tags
Find: ^(.+)$
Replace: <movie>\1</movie>

Step 5: Wrap movie titles
Find: <movie>(.*?)\s
Replace: <movie><title>\1</title> 

Step 6: Wrap the year
Find: </title>\s+(\d{4})
Replace: </title><year>\1</year>

Step 7: Wrap the country 
Find: </year>\s+([A-Z]{2,3})
Replace: </year><country>\1</country>

Step 8: Wrap numeric runtime
Find: </country>\s+(\d+)\s+min
Replace: </country><runTime unit="min">\1</runTime>

Step 9: Wrap N/A runtimes
Find:</country>\s*N/A
Replace: </country><runTime>N/A</runTime>

Step 10: add <xml> and </xml>

