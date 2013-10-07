gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class HashesTest < Minitest::Test
  def test_a_crowd_of_people
    # We have a crowd of people, and we don't know
    # their names... explain more.
    # key points to value
    # {key => value}
    crowd = {
      'red shirt' => 'Alice',
      'blue tie' => 'Bob',
      'pink shoelaces' => 'Charlie',
      'distressed jeans' => 'David',
      'turquoise dress' => 'Eve',
      'black slacks' => 'Fred',
      'big nose' => 'Jacques',
      'fierce scowl' => 'Gary',
      'glittery scarf' => 'Kenneth',
      'wooden earrings' => 'Bart'
    }

    # We can't ever look up by value.
    # But we can swap them.
    crowd_by_name = crowd.invert

    characteristic = crowd_by_name['Fred']
    assert_equal 'black slacks', characteristic

    # Now write some assertions where you pull
    # people out of the hash by the characteristic
    # that they are saved with
    # e.g.
    name = crowd['glittery scarf']
    assert_equal 'Kenneth', name

    name = crowd['pink shoelaces']
    assert_equal 'Charlie', name

    assert_equal 'Charlie', crowd['pink shoelaces']
  end

  def test_phone_book
    phone_book = {
      'Jones, Charlie' => '345-555-3456',
      'Smith, Alice' => '123-555-1234',
      'Tallis, Bob' => '234-555-2345'
    }

    # To look up Alice's phone number in the phone book
    # you look them up by their name.
    #
    phone_number = phone_book['Smith, Alice']
    assert_equal '123-555-1234', phone_number
    assert_equal 12, phone_number.length
    assert_equal '123-555-1234', phone_book['Smith, Alice']
    assert_equal 12, phone_book['Smith, Alice'].length
  end

  # note to self, create examples with not-strings as keys.

  def test_add_more_things_to_a_hash
    crowd = {
      'metal spikes' => 'Aurora'
    }
    # Find Aurora in the hash
    # assert_equal something something something
    assert_equal 'Aurora', crowd['metal spikes']

    # This is how we add Pete to the crowd.
    # He's got purple hair.
    crowd['purple hair'] = "Pete"

    # Now add Terry to the crowd.
    # He's got a gray beanie.
    crowd['gray beanie'] = 'Terry'

    # This is how we add Sarah and Jack to the crowd
    # at the same time
    crowd = crowd.merge({'pearl necklace' => 'Sarah', 'polo shirt' => 'Jack'})

    # Find Pete in the crowd
    assert_equal 'Pete', crowd['purple hair']

    # Find Sarah in the crowd
    assert_equal 'Sarah', crowd['pearl necklace']

    # What if Clara also has purple hair?
    crowd['purple hair'] = 'Clara'

    # Can we still get Pete out of the crowd?
    # Nope.

    # Find Clara in the crowd
    # Find Terry in the crowd
  end

  def test_pets
    pets = {
      'Rex' => 'bulldog',
      'Fluffy' => 'burmese',
      'Knuckles' => 'chihuahua',
      'Cheech' => 'sugar-glider',
      'Pookie' => 'lizzard'
      # add more pets
    }
    # add assertions where you get a pet by name,
    # and assert their breed
  end

  def test_fruit
    skip
    fruit = {
      'apple' => 'green',
      'watermelon' => 'pink',
      'peach' => 'orange',
      'grape' => 'purple',
      'lilikoi' => 'yellow'
      # add more fruit
    }
    # add assertions where you get a fruit by name
    # and assert its color
  end

  def test_hashes_and_arrays_can_seem_kind_of_similar
    skip
    # This is an array
    queue = ["Alice", "Bob", "Charlie", "Dave", "Eve"]

    # who is at position 1?
    assert_equal "Bob", queue[1]
    # who is at position 3?

    # Here I'm going to add another person to the back of the array
    queue << "Fred"

    # Your turn. Add more people to the array

    # This is a hash with numeric keys
    queue = {
      0 => "Alice",
      1 => "Bob",
      2 => "Charlie",
      3 => "Dave",
      4 => "Eve"
    }

    # who is at position 1?
    assert_equal "Bob", queue[1]

    # Now I'm adding more people to the hash:
    queue[5] = "Fred"

    # Look. I can add them anywhere:
    queue[42] = "George"

    # who is at position 4?
    # who is at position 5?
    # who is at position 42?
  end

  def test_scrabble_scores
    skip
    scores = {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2, "E"=>1, "F"=>4, "G"=>2, "H"=>4, "I"=>1, "J"=>8,
      "K"=>5, "L"=>1, "M"=>3, "N"=>1, "O"=>1, "P"=>3, "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8, "Y"=>4, "Z"=>10
    }
    # assert some letter scores
  end

  def test_neighborhood
    neighborhood = {
      'blue house' => ["Annie", "Jim", "Barney"],
      'red house' => ["Bill", "Carolyn", "Frederic"],
      'green house' => ["Fred", "Alex"],
      'yellow house' => ["Timothy", "John", "Penelope", "Rosie"]
      # add more houses with people
    }
    assert_equal ["Bill", "Carolyn", "Frederic"], neighborhood['red house']

    # make assertions.
    # who lives in the red house?
    neighborhood['red house'] << 'Anna'
    assert_equal ["Bill", "Carolyn", "Frederic", "Anna"], neighborhood['red house']

    # what house does Alex live in?
    house = nil
    neighborhood.each do |color, family| # block variables
      if family.include?('Alex')
        house = color
      end
    end
    assert_equal 'green house', color
  end

  def test_neighborhood_with_ages
    skip
    neighborhood = {
      'blue house' => {"Annie" => 39, "Jim" => 10, "Barney" => 12},
      'red house' => {"Bill" => 24, "Carolyn" => 28, "Frederic" => 2},
      'green house' => {"Fred" => 57, "Alex" => 64},
      'yellow house' => {"Timothy" => 31, "John" => 37, "Penelope" => 8, "Rosie" => 4}
      # add more houses with people
    }
    # make assertions
    # how old is John? What color house does he live in?
    # who lives with Frederic?
    # Who are all the children in the neighborhood?
  end

  def test_more_complicated_scores
    skip
    scores = {
      1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
      2 => ["D", "G"],
      3 => ["B", "C", "M", "P"],
      4 => ["F", "H", "V", "W", "Y"],
      5 => ["K"],
      8 => ["J", "X"],
      10 => ["Q", "Z"]
    }
    # h_score = figure it out here while looping through...
    scores.each do |score, letters|
      # now loop through the letters and find 'h'
    end

    assert_equal 4, h_score
    # do more letter scores yourself
  end

  def test_letters_as_keys
    skip
    word = "giraffe"
    # do stuff
    expected = {
      "g" => true,
      "i" => true,
      "r" => true,
      "a" => true,
      "f" => true,
      "e" => true
    }
    assert_equal expected, word.letter_keys
  end

  def test_letters_as_keys_again
    skip
    word = "deer"
    expected = {
      "d" => true,
      "e" => true,
      "r" => true
    }
    assert_equal expected, word.letter_keys
  end

  def test_histogram_of_letter_counts
    skip
    word = "thoroughgoing"
    # do stuff
    expected = {
      "t"=>1, "h"=>2, "o"=>3,
      "r"=>1, "u"=>1, "g"=>3,
      "i"=>1, "n"=>1
    }
    assert_equal expected, histogram
  end

  def test_other_histogram_of_letter_counts
    skip
    word = "scintillate"
    # do stuff
    expected = {
      "s" => 1, "c" => 1, "e" => 1,
      "i" => 2, "l" => 2, "n" => 1,
      "a" => 1, "t" => 2
    }
    assert_equal expected, histogram
  end
end

