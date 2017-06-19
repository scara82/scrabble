
class Scrabble

  def score(word)

    # hash with the letters points
    letters_points = {
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
    # checking if there are special characters or numbers in the word
    elsif word =~ /[^a-zA-Z]/
      return 'invalid input, please enter only letters'
    else
      tot_score = 0
      # the word's letters are compared with the hash key and the corrisponding value
      # is added at the counter (tot_score). All the letters are converted in upcase as in the hash.
      tot_score = letters_points.values_at(*word.upcase.chars).reduce(0, :+)
        return tot_score
    end
  end
end
