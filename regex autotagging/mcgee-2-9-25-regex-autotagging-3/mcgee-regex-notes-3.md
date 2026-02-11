removed all excess data

step 1 
find: & 
replace: &amp;
no results

step 2
find: <
replace: &lt;
no results 

step 3
find: >
replace: &gt;
no results 

step 4
Find: `\n{3,}`  
Replace: `\n\n`

step 5
find: `\n\n`  
Replace: `</p>\n<p>`
step 5a: added <p> at the start and </p> at the end

Step 6
Find: `^<p>([IVX]+\..+)</p>$`  
Replace: `<title>\1</title>`
case sensitive on

Step 7: Wrap chapters
Find: `<title>`  
Replace: `</chapter>\n<chapter>\n<title>`
step 7a: fixed opening and closing chapter tags

Step 8: 
Find: `"(.+?)"`  
Replace: `<quote>\1</quote>`
Dot matches all enabled 

Step 9: wrapped entire thing in root element (<book>)
