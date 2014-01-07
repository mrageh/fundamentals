require_relative 'test_helper'
require_relative 'first_error_reporter'
require 'date'
require 'csv'
require_relative 'face'

class ShovelTest < FillInTheBlankTest
  def test_shovel_on_string
    s = ""
    s << "a"
    s << "b"
    s << "c"
    equal_to_what 's'

    # Explain in English what `<<` does to a string.
  end

  def test_shovel_on_array
    a = []
    a << "a"
    a << "b"
    a << "c"
    equal_to_what 'a'

    # Explain in English what `<<` does to an array.
  end

  def test_shovel_on_array_inside_hash
    hash = {"letters" => [], "numbers" => []}

    hash["letters"] << "a"
    hash["letters"] << "b"
    hash["letters"] << "c"

    hash["numbers"] << 1
    hash["numbers"] << 2
    hash["numbers"] << 3

    equal_to_what 'hash["letters"]'
    equal_to_what 'hash["numbers"]'
  end

  def test_shovel_on_fixnum
    i1 = 1 << 1
    i2 = 1 << 2
    i3 = 1 << 3
    i4 = 1 << 4
    i5 = 1 << 5
    i6 = 1 << 6

    equal_to_what 'i1'
    equal_to_what 'i2'
    equal_to_what 'i3'
    equal_to_what 'i4'
    equal_to_what 'i5'
    equal_to_what 'i6'

    i1 = 7 << 1
    i2 = 7 << 2
    i3 = 7 << 3
    equal_to_what 'i1'
    equal_to_what 'i2'
    equal_to_what 'i3'

    # Explain in English what `<<` does to a number.
  end

  def test_shovel_on_date
    date = Date.new(2013, 11, 28)
    date1 = date << 1
    date2 = date << 2
    date3 = date << 3
    date4 = date << 4

    equal_to_what "date1.strftime('%e %b, %Y')"
    equal_to_what "date2.strftime('%e %b, %Y')"
    equal_to_what "date3.strftime('%e %b, %Y')"
    equal_to_what "date4.strftime('%e %b, %Y')"

    # Explain in English what `<<` does to a date.
  end

  def test_shovel_on_csv
    row = CSV::Row.new(["name", "age"], ["Alice", 23])

    row << ["profession", "astronomer"]
    equal_to_what "row.to_csv"
    equal_to_what "row.to_hash"

    row << {phone: "(123) 123-1234", salary: "USD 98,000"}
    equal_to_what "row.to_csv"
    equal_to_what "row.to_hash"

    # Explain in English what `<<` does to a csv row.
  end

  def test_shovel_on_face
    face = Face.new
    face << "apple"
    face << "bread"
    face << "chicken"
    assert_equal __, face.foods_eaten

    # Go look at the Face class.
    # How do you define a `<<` method?
  end
end
