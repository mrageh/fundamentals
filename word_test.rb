gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'word'

class WordTest < Minitest::Test

  def test_a_word_has_text
    word = Word.new("brilliant")
    assert_equal "brilliant", word.text
  end

  def test_letters
    word = Word.new("forgetful")
    assert_equal ["f", "o", "r", "g", "e", "t", "f", "u", "l"], word.letters
  end

  def test_alphabetized
    word = Word.new("corndog")
    assert_equal ["c", "d", "g", "n", "o", "o", "r"], word.alphabetized
  end

  def test_alphagram
    word = Word.new("pungent")
    assert_equal "egnnptu", word.alphagram
  end

  def test_other_alphagram
    word = Word.new("euphemistically")
    assert_equal "aceehiillmpstuy", word.alphagram
  end

  def test_histogram
    word = Word.new("thoroughgoing")
    histogram = {
      "t"=>1, "h"=>2, "o"=>3,
      "r"=>1, "u"=>1, "g"=>3,
      "i"=>1, "n"=>1
    }
    assert_equal histogram, word.histogram
  end

  def test_other_histogram
    word = Word.new("scintillate")
    histogram = {
      "a" => 1, "c" => 1, "e" => 1,
      "i" => 2, "l" => 2, "n" => 1,
      "s" => 1, "t" => 2
    }
    assert_equal histogram, word.histogram
  end

  def test_simplest_possible_scrabble_score
    word = Word.new("a")
    assert_equal 1, word.scrabble_score
  end

  def test_slightly_more_complicated_scrabble_score
    word = Word.new("street")
    assert_equal 6, word.scrabble_score
  end

  def test_proper_scrabble_score
    word = Word.new("wiffleball")
    assert_equal 21, word.scrabble_score
  end

  def test_score_is_case_insensitive
    word = Word.new("CABBAGE")
    assert_equal 14, word.scrabble_score
  end

  def test_simplification
    word = Word.new("bubble")
    assert_equal "buble", word.simplified
  end

  def test_more_simplification
    word = Word.new("coffee")
    assert_equal "cofe", word.simplified
  end

  def test_simplify_another_word
    word = Word.new("moonpuddle")
    assert_equal "monpudle", word.simplified
  end
end

