gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'phrase'

class PhraseTest < Minitest::Test
  def test_a_phrase_has_text
    phrase = Phrase.new("Once upon a time...")
    assert_equal "Once upon a time...", phrase.text
  end

  def test_a_phrase_has_words
    text = "ping pong and peccadilloes"
    phrase = Phrase.new(text)
    words = ["ping", "pong", "and", "peccadilloes"]
    assert_equal words, phrase.words
  end

  def test_a_phrase_has_a_length
    text = "I have tried to know absolutely nothing about a great many things"
    phrase = Phrase.new(text)
    assert_equal 12, phrase.length
  end

  def test_phrase_can_be_a_different_length
    text = "Lick the plate clean in a fancy restaurant"
    phrase = Phrase.new(text)
    assert_equal 8, phrase.length
  end

  def test_a_phrase_normalizes_its_words
    text = "Holy COW that is AMAZING"
    phrase = Phrase.new(text)
    words = ["holy", "cow", "that", "is", "amazing"]
    assert_equal words, phrase.words
  end

  def test_the_words_exclude_punctuation
    text = "The big, bad wolf!"
    phrase = Phrase.new(text)
    words = ["the", "big", "bad", "wolf"]
    assert_equal words, phrase.words
  end

  def test_punctuation_is_everywhere
    text = "!ZOMG!That-is SOOO:%$%# cool!!!!"
    phrase = Phrase.new(text)
    words = ["zomg", "that", "is", "sooo", "cool"]
    assert_equal words, phrase.words
  end

  def test_spaces_do_not_matter
    text = "very       far        apart"
    phrase = Phrase.new(text)
    words = ["very", "far", "apart"]
    assert_equal words, phrase.words
  end

  def test_tabs_are_spaces_too
    text = "real\tamazing\tdistances"
    phrase = Phrase.new(text)
    words = ["real", "amazing", "distances"]
    assert_equal words, phrase.words
  end

  def test_alphabetize_the_word_list
    text = "ornery goblins and bloated elves"
    phrase = Phrase.new(text)
    alphabetized = ["and", "bloated", "elves", "goblins", "ornery"]
    assert_equal alphabetized, phrase.alphabetized
  end

  def test_alphabetized_list_is_case_insensitive
    text = "Archie and Barbara went to all the bars"
    phrase = Phrase.new(text)
    alphabetized = ["all", "and", "archie", "barbara", "bars", "the", "to", "went"]
    assert_equal alphabetized, phrase.alphabetized
  end

  def test_alphagrams
    text = "we cannot teach people anything"
    phrase = Phrase.new(text)
    alphagrams = ["ew", "acnnot", "aceht", "eelopp", "aghinnty"]
    assert_equal alphagrams, phrase.alphagrams
  end

  def test_letter_count
    text = "the clock is ticking"
    phrase = Phrase.new(text)
    histogram = {
      "t"=>2, "h"=>1, "e"=>1,
      "c"=>3, "l"=>1, "o"=>1,
      "k"=>2, "i"=>3, "s"=>1,
      "n"=>1, "g"=>1
    }
    assert_equal histogram, phrase.letter_count
  end

  def test_more_letter_counts
    text = "Go home, America. You're drunk."
    phrase = Phrase.new(text)
    histogram = {
      "g"=>1, "o"=>3, "h"=>1,
      "m"=>2, "e"=>3, "a"=>2,
      "r"=>3, "i"=>1, "c"=>1,
      "y"=>1, "u"=>2, "d"=>1,
      "n"=>1, "k"=>1
    }
    assert_equal histogram, phrase.letter_count
  end

  def test_a_phrase_might_be_loud
    text = "THIS IS LOUD"
    phrase = Phrase.new(text)
    assert phrase.loud?
  end

  def test_a_phrase_is_not_always_loud
    phrase = Phrase.new("No, this is not loud.")
    refute phrase.loud?
  end

  def test_a_phrase_might_be_a_question
    phrase = Phrase.new("Do you like goldfish?")
    assert phrase.question?
  end

  def test_a_phrase_is_not_always_a_question
    phrase = Phrase.new("Bingo. Not a question.")
    refute phrase.question?
  end

  def test_a_phrase_can_be_both_loud_and_a_question
    phrase = Phrase.new("CAN YOU HEAR ME?")
    assert phrase.loud?
    assert phrase.question?
  end

  def test_a_phrase_can_be_silent
    phrase = Phrase.new("")
    assert phrase.silent?
  end

  def test_there_are_many_silences
    [" ", "    ", "       ", "            ", "\t  ", "    \t    "].each do |text|
      assert Phrase.new(text).silent?
    end
  end

  def test_not_everything_is_silence
    refute Phrase.new("Whatever you like, honey.").silent?
  end

  def test_a_phrase_could_be_vulgar
    phrase = Phrase.new("What is this bullshit?")
    assert phrase.vulgar?
  end

  def test_there_are_many_ways_to_be_vulgar
    # make some stuff up
  end

  def test_not_everything_is_vulgar
    phrase = Phrase.new("The person in the red shirt is standing.")
    refute phrase.vulgar?
  end

  def test_loud_questions_can_be_vulgar
    phrase = Phrase.new("ARE YOU EFFING KIDDING ME?")
    assert phrase.vulgar?
    assert phrase.loud?
    assert phrase.question?
  end

  def test_phrase_has_word_count
    phrase = Phrase.new("one fish two fish red fish blue fish")
    counts = {
      "one"=>1, "fish"=>4, "two"=>1, "red"=>1, "blue"=>1
    }
    assert_equal counts, phrase.word_count
  end
end

