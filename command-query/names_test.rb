gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'names'

class NamesTest < Minitest::Test
  def test_no_names
    names = Names.new
    assert_equal nil, names.longest
  end

  def test_longest_of_one
    names = Names.new
    names << "Oda"
    assert_equal "Oda", names.longest
  end

  def test_longest_of_several
    names = Names.new
    names << "Ann"
    names << "Alexandra"
    names << "Roger"
    assert_equal "Alexandra", names.longest
  end
end
