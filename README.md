<h1>Soundex</h1>
<i>TDD Kata for encoding last names into a 4-character string</i>
<br><br>
Soundex is a known algorithm for encoding last names into a 4-character string. <br>
The goal is to encode similar-sounding names to the same representation, <br>
so that searches with slightly misspelled names will still find appropriate matches. <br><br>
The rules for Soundex encoding:
<br><br>1. Retain the first letter of the name and drop all other occurrences of a, e, i, o, u, y, h, w.
<br><br>2. Replace consonants with digits as follows (after the first letter):<br><br>
b, f, p, v → 1<br>
c, g, j, k, q, s, x, z → 2<br>
d, t → 3<br>
l → 4<br>
m, n → 5<br>
r → 6<br><br>
3. If two or more letters with the same number are adjacent in the original name (before step 1), 
only retain the first letter; also two letters with the same number separated by ‘h’ or ‘w’ are coded as a single number, 
whereas such letters separated by a vowel are coded twice. This rule also applies to the first letter.
<br><br>4. If you have too few letters in your word that you can’t assign three numbers, append with zeros 
until there are three numbers. If you have more than 3 letters, just retain the first 3 numbers.
<br><br><br>

Using this algorithm:
- both "Robert" and "Rupert" return the same string "R163" <br>
- "Rubin" yields "R150"<br>
- "Ashcraft" and "Ashcroft" both yield "A261" <br>
- "Tymczak" yields "T522" not "T520", because the chars 'z' and 'k' in the name are coded as 2 twice since a vowel lies 
in between them <br>
- "Pfister" yields "P236" not "P123", because the first two letters have the same number and are coded once as 'P' <br>
- "Honeyman" yields "H555"
