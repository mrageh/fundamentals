require_relative 'test_helper'
require_relative 'first_error_reporter'

class SparklyHintTest < FillInTheBlankTest
  def test_shovel_into_string
    s1 = ""
    s2 = s1
    s2 << "a"
    s2 << "b"
    s2 << "c"

    equal_to_what 's2'
    equal_to_what 's1'
  end

  def test_add_two_strings
    s1 = ""
    s2 = s1
    s2 = s2 + "a"
    s2 = s2 + "b"
    s2 = s2 + "c"

    equal_to_what 's2'
    equal_to_what 's1'
  end

  # How is shoveling different from adding?
end
