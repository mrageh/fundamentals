gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

# Hashes can contain other hashes.
# Mind. Blown.
class HashesThreeTest < Minitest::Test

  def test_neighborhood_with_ages
    neighborhood = {
      'blue house' => {"Annie" => 39, "Jim" => 10, "Barney" => 12},
      'red house' => {"Bill" => 24, "Carolyn" => 28, "Frederic" => 2},
      'green house' => {"Fred" => 57, "Alex" => 64},
      'yellow house' => {"Timothy" => 31, "John" => 37, "Penelope" => 16, "Rosie" => 4},
      'brown house' => {"Torrey" => 18, "Alvera" => 19, "Jamie" => 19},
      'peach house' => {"Kaylee" => 39, "Grant" => 13}
    }

    # This is how we figure out what color house John lives in:
    house = nil
    neighborhood.each do |color, people|
      people.each do |name, age|
        if name == "John"
          house = color
        end
      end
    end
    assert_equal 'yellow house', house

    # This is how we figure out how old John is:
    age = nil
    neighborhood.each do |color, people|
      if people.has_key?("John")
        age = people["John"]
      end
    end
    assert_equal 37, age

    # This is how we figure out who lives with John:
    roommates = nil
    neighborhood.each do |color, people|
      if people.has_key?("John")
        roommates = people.keys
        roommates.delete("John")
      end
    end
    assert_equal ["Timothy", "Penelope", "Rosie"], roommates

    # This is how we figure out who all the kids in the
    # neighborhood are.
    kids = []
    neighborhood.each do |color, people|
      people.each do |name, age|
        if age <= 12
          kids << name
        end
      end
    end
    expected = ["Frederic", "Barney", "Rosie", "Jim"]
    assert_equal expected.sort, kids.sort

    # Your turn.
    # How old is Frederic?
    # Who lives with Frederic?
    # Who lives with Penelope?
    # Who are all the teenagers in the neighborhood?
    # Who are all the adults in the neighborhood?
  end
end

