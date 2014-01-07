require_relative 'test_helper'
require_relative 'first_error_reporter'

class HashDefaultTest < FillInTheBlankTest
  def test_object_ids_of_arrays
    a = []
    maybe_equal a.object_id, a.object_id

    a1 = []
    a2 = []
    maybe_equal a1.object_id, a2.object_id
  end

  def test_default_arrays_in_hashes
    lists = Hash.new([])
    equal_to_what 'lists[:a]'
    equal_to_what 'lists[:b]'
    maybe_equal lists[:a].object_id, lists[:b].object_id

    lists = Hash.new { [] }
    equal_to_what 'lists[:a]'
    equal_to_what 'lists[:b]'
    maybe_equal lists[:a].object_id, lists[:b].object_id
  end

  def test_object_ids_of_strings
    s = ""
    maybe_equal s.object_id, s.object_id

    s1 = ""
    s2 = ""
    maybe_equal s1.object_id, s2.object_id
  end

  def test_default_strings_in_hashes
    lists = Hash.new("")
    equal_to_what 'lists[:a]'
    equal_to_what 'lists[:b]'
    maybe_equal lists[:a].object_id, lists[:b].object_id

    lists = Hash.new { "" }
    equal_to_what 'lists[:a]'
    equal_to_what 'lists[:b]'
    maybe_equal lists[:a].object_id, lists[:b].object_id
  end

  def test_object_ids_of_fixnums
    i = 1
    maybe_equal i.object_id, i.object_id

    i1 = 1
    i2 = 1
    maybe_equal i1.object_id, i2.object_id
  end

  def test_default_numbers_in_hashes
    lists = Hash.new(0)
    equal_to_what 'lists[:a]'
    equal_to_what 'lists[:b]'
    assert_equal lists[:a].object_id, lists[:b].object_id

    lists = Hash.new { 0 }
    equal_to_what 'lists[:a]'
    equal_to_what 'lists[:b]'
    assert_equal lists[:a].object_id, lists[:b].object_id
  end

  def test_word_stem_1
    words = Hash.new('de')
    word1 = words[1] << 'fault'
    word2 = words[2] << 'cide'
    word3 = words[3] << 'spair'
    word4 = words[4] << 'bunk'
    word5 = words[5] << 'rail'

    equal_to_what 'word1'
    equal_to_what 'word2'
    equal_to_what 'word3'
    equal_to_what 'word4'
    equal_to_what 'word5'

    equal_to_what 'words'
  end

  def test_word_stem_2
    words = Hash.new { 'de' }
    word1 = words[1] << 'fault'
    word2 = words[2] << 'cide'
    word3 = words[3] << 'spair'
    word4 = words[4] << 'bunk'
    word5 = words[5] << 'rail'

    equal_to_what 'word1'
    equal_to_what 'word2'
    equal_to_what 'word3'
    equal_to_what 'word4'
    equal_to_what 'word5'

    equal_to_what 'words'
  end

  def test_word_stem_3
    words = Hash.new('de')
    word1 = words[1] += 'fault'
    word2 = words[2] += 'cide'
    word3 = words[3] += 'spair'
    word4 = words[4] += 'bunk'
    word5 = words[5] += 'rail'

    equal_to_what 'word1'
    equal_to_what 'word2'
    equal_to_what 'word3'
    equal_to_what 'word4'
    equal_to_what 'word5'

    equal_to_what 'words'
  end
end
