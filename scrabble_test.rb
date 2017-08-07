require "minitest/autorun"
require "minitest/reporters"
require_relative "scrabble"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class ScrabbleTest < MiniTest::Unit::TestCase

  def test_score_return_points
    game = Scrabble.new
    assert_equal 8, game.score("hello")
  end

  def test_empty_word_scored_zero
    game = Scrabble.new
    assert_equal 0, game.score('')
  end

  def test_nil_scored_zero
    game = Scrabble.new
    assert_equal 0, game.score('')
  end

  def test_word_with_special_characters_is_invalid
    game = Scrabble.new
    assert_equal 'invalid input, please enter only letters', game.score('h3ll#')
  end

  def test_word_with_only_numbers_is_invalid
    game = Scrabble.new
    assert_equal 'invalid input, please enter only letters', game.score('5')
  end

  def test_letter_score
    game = Scrabble.new
    assert_equal 10, game.letter_score('q')
  end

  def test_double_word_score
    game = Scrabble.new
    assert_equal 16, game.double_word('hello')
  end

  def test_triple_word_score
    game = Scrabble.new
    assert_equal 24, game.triple_word('hello')
  end

  def test_double_letter_score
    game = Scrabble.new
    assert_equal 9, game.double_letter('hello','l')
  end

  def test_triple_letter_score
    game = Scrabble.new
    assert_equal 12, game.triple_letter('hello','l')
  end

  def test_double_letter_not_in_the_word
    game = Scrabble.new
    assert_equal 'invalid letter', game.double_letter('hello','b')
  end
end
