class Scrabble

  @@letters_points = {
    "A" => 1, "B" => 3, "C" => 3, "D" => 2,
    "E" => 1, "F" => 4, "G" => 2, "H" => 4,
    "I" => 1, "J" => 8, "K" => 5, "L" => 1,
    "M" => 3, "N" => 1, "O" => 1, "P" => 3,
    "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
    "U" => 1, "V" => 4, "W" => 4, "X" => 8,
    "Y" => 4, "Z" => 10
  }

  def score(word)
    if word === nil
      0

    # check if there are special characters or numbers in the word
    elsif word =~ /[^a-zA-Z]/
      'invalid input, please enter only letters'

    # the word's letters are compared with the hash key and the corresponding value
    # is added at the counter (tot_score) with the reduce method.
    # The default value is zero so if no word is entered it returns 0.
    # All letters are converted in upcase to match the hash keys.
    else
      tot_score = @@letters_points.values_at(*word.upcase.chars).reduce(0, :+)
        # return tot_score
    end
  end

  def is_the_letter_into_the_word?(word, letter)
    ((n = word.count letter) > 0)? "#{n} times" : 'no, the letter is not in the word'
  end

  def letter_score(letter)
    @@letters_points[letter.upcase]
  end

  def double_word(word)
    double_word_score = score(word) * 2
  end

  def triple_word(word)
    triple_word_score = score(word) * 3
  end

  def double_letter(word,letter)
    # the conditional contruct will check how many times the letter is in the word.
    # if zero a "invalid letter" messagge will be returned otherwise will return
    # the basic score of the word, plus the letter value one time (because one times
    # has already been counted in score()) plus n times the letter is in the word)
    ((n = word.count letter) > 0)? (score(word) + n * letter_score(letter)) : 'invalid letter'
  end

  def triple_letter(word,letter)
    # the conditional contruct will check how many times the letter is in the word.
    # if zero a "invalid letter" messagge will be returned otherwise will return
    # the basic score of the word, plus the letter value two time (because one times
    # has already been counted in score()) plus n times the letter is in the word)
    ((n = word.count letter) > 0)? (score(word) + 2 * n * letter_score(letter)) : 'invalid letter'
  end

  def n_times_letter(word, letter, times)
    ((n = word.count letter) > 0)? (score(word) + (times - 1) * n * letter_score(letter)) : 'invalid letter'
  end

end
