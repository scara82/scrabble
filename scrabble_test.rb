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

end
