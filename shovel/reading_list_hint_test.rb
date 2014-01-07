require_relative 'test_helper'
require_relative 'first_error_reporter'

class ReadingListHintTest < FillInTheBlankTest
  def test_shovel_into_array
    a1 = []
    a2 = a1
    a2 << "a"
    a2 << "b"
    a2 << "c"
    equal_to_what 'a2'
    equal_to_what 'a1'
  end

  def test_add_two_arrays
    a1 = []
    a2 = a1
    a2 = a2 + ["a"]
    a2 = a2 + ["b"]
    a2 = a2 + ["c"]
    equal_to_what 'a2'
    equal_to_what 'a1'
  end

  # How is shoveling different from adding?
end
