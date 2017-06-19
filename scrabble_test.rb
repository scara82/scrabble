require "minitest/autorun"
require "minitest/reporters"
require_relative "scrabble"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class ScrabbleTest < MiniTest::Unit::TestCase
  def test_score_return_points
    game = Scrabble.new('hello').score
    assert_equal "8", game
  end
end
