require "minitest/autorun"
require "minitest/reporters"
require_relative "scrabble"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class ScrabbleTest < MiniTest::Unit::TestCase

end
