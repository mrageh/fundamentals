gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class HashesTest < Minitest::Test
  def test_a_crowd_of_people
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

    # Now write some assertions where you pull
    # people out of the hash by the characteristic
    # that they are saved with
    # e.g.
    assert_equal 'Kenneth', crowd['glittery scarf']
  end

  def test_pets
    pets = {
      'Rex' => 'bulldog',
      'Fluffy' => 'burmese',
      'Knuckles' => 'chihuahua'
      # add more pets
    }
    # add assertions where you get a pet by name,
    # and assert their breed
  end

  def test_fruit
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

  def test_scrabble_scores
    scores = {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2, "E"=>1, "F"=>4, "G"=>2, "H"=>4, "I"=>1, "J"=>8,
      "K"=>5, "L"=>1, "M"=>3, "N"=>1, "O"=>1, "P"=>3, "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8, "Y"=>4, "Z"=>10
    }
    # assert some letter scores
  end

  def test_more_complicated_scores
    scores = {
      1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
      2 => ["D", "G"],
      3 => ["B", "C", "M", "P"],
      4 => ["F", "H", "V", "W", "Y"],
      5 => ["K"],
      8 => ["J", "X"],
      10 => ["Q", "Z"]
    }
    # h_score = figure it out here...
    assert_equal 4, h_score
    # do more of them yourself
  end

  def test_neighborhood
    neighborhood = {
      'blue house' => ["Annie", "Jim", "Barney"],
      'red house' => ["Bill", "Carolyn", "Frederic"],
      'green house' => ["Fred", "Alex"],
      'yellow house' => ["Timothy", "John", "Penelope", "Rosie"]
      # add more houses with people
    }
    # make assertions.
    # who lives in the red house?
    # what house does Alex live in?
  end

  def test_neighborhood_with_ages
    neighborhood = {
      'blue house' => {"Annie" => 39, "Jim" => 10, "Barney" => 12},
      'red house' => {"Bill" => 24, "Carolyn" => 28, "Frederic" => 2],
      'green house' => {"Fred" => 57, "Alex" => 64},
      'yellow house' => {"Timothy" => 31, "John" => 37, "Penelope" => 8, "Rosie" => 4}
      # add more houses with people
    }
    # make assertions
    # how old is John? What color house does he live in?
    # who lives with Frederic?
    # Who are all the children in the neighborhood?
  end
end

