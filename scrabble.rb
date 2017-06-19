
class Scrabble

  def score(word)

    # hash with the letters points
    @@letters_points = {
      "A" => 1, "B" => 3, "C" => 3, "D" => 2,
      "E" => 1, "F" => 4, "G" => 2, "H" => 4,
      "I" => 1, "J" => 8, "K" => 5, "L" => 1,
      "M" => 3, "N" => 1, "O" => 1, "P" => 3,
      "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
      "U" => 1, "V" => 4, "W" => 4, "X" => 8,
      "Y" => 4, "Z" => 10
    }

    if word === nil
      return 0
# check if there are special characters or numbers in the word
    elsif word =~ /[^a-zA-Z]/
      return 'invalid input, please enter only letters'
    else
=begin
the word's letters are compared with the hash key and the corrisponding value
is added at the counter (tot_score) with reduce, the default value is zero so if no word is entered return 0.
All letters are converted in upcase to match the hash keys.
=end
      tot_score = 0
      tot_score = @@letters_points.values_at(*word.upcase.chars).reduce(0, :+)
        return tot_score
    end
  end

  def double_word(word)
    double_word_score = score(word) * 2
  end

  def triple_word(word)
    triple_word_score = score(word) * 3
  end

  def double_letter(word,letter)
    # the letter value is added once because is already added in the word score once
    final_score = score(word) + @@letters_points.values_at(*letter.upcase.chars).reduce(:+)
  end

  def triple_letter(word,letter)
    # the double_letter_score is the letter value double that will be added at the word score where the letter's value is already added once
    double_letter_score = @@letters_points.values_at(*letter.upcase.chars).to_i
    final_score = score(word) + 2 * letter_score
  end
end
