# Scrabble

The program has been developed using:
* Ruby 2.3.3
* minitest 5.10.2

## Scrabble Score Problem
Giving the program a word it should give back a score accordingly to the following keys-values pairs:
```
{
  "A" => 1, "B" => 3, "C" => 3, "D" => 2,
  "E" => 1, "F" => 4, "G" => 2, "H" => 4,
  "I" => 1, "J" => 8, "K" => 5, "L" => 1,
  "M" => 3, "N" => 1, "O" => 1, "P" => 3,
  "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
  "U" => 1, "V" => 4, "W" => 4, "X" => 8,
  "Y" => 4, "Z" => 10
}
```
for example:
```
> game = Scrabble.new
> game.score("hello")
=> 8
```

Requirements:
* Given a word to the application it will return a score;
* The solution should be insensitive to case;
* An empty word or nil should score 0 point;
* If a no-alphabetical character or a number is entered the input is not valid;
* It is possible to play a double or a triple letter;
* if the chosen letter for double or triple letter points is not contained in the word the input is invalid;
* It is possible to play a double or a triple word.
