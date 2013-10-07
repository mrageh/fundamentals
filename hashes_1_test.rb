gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

# This is a hash:
#
# { "dog" => "Rex", "cat" => "Fluffy" }
#
# The keys point to the values:
#
# { key1 => value1, key2 => value2 }

class HashesOneTest < Minitest::Test

  # Imagine a crowd of people. They're not standing in line,
  # they're just spread throughout the room.
  #
  # In a hash, we can only look things up by their keys.
  # If we know a key, it's very efficient to look up the value.
  #
  # So in this crowd of people, you don't know their names.
  # You can pick them out by some visible characteristic,
  # like a facial feature or a piece of clothing.
  def test_a_crowd_of_people
    crowd = {
      'red shirt' => 'Jennifer',
      'blue tie' => 'Luther',
      'pink shoelaces' => 'Carson',
      'distressed jeans' => 'Laetitia',
      'turquoise dress' => 'Marlin',
      'black slacks' => 'Gustav',
      'big nose' => 'Jacques',
      'fierce scowl' => 'Cheyenne',
      'glittery scarf' => 'Kenneth',
      'wooden earrings' => 'Bart'
    }

    # So this is the crowd. Looking up a person in
    # this hash is something like this:
    #
    # "Hey, person in the turquoise dress, what is your name?"
    #
    # In code, that looks like this:
    #
    # crowd['turquoise dress']
    # => "Marlin"
    #
    # We can do anything with the value that comes back.
    # For example, we can store it in a variable:
    #
      name = crowd['turquoise dress']

    # now that we've stored the name, we can assert that it's
    # the correct name

    assert_equal 'Marlin', name

    # Or we can make an assertion without saving
    # it to a variable first

    assert_equal 'Marlin', crowd['turquoise dress']

    # Now it's your turn.
    #
    # Write assertions that prove that you've found the
    # right name:
    #
    # 1. What is the name of the person wearing the pink shoelaces?
    # 2. What is the name of the person wearing the black slacks?
    # 3. What is the name of the person with the big nose?
  end

  # A phone book is a lot like a hash.
  # You don't know people's phone numbers, but you do
  # know their name.
  #
  # So you can look up the name in the phone book and
  # get back the phone number.
  def test_the_phone_book
    phone_book = {
      "Howe, Joanie" => "559-989-3056",
      "Tremblay, Agustin" => "755-536-0289",
      "Feeney, Ruben" => "610-736-8746",
      "Pacocha, Laurel" => "438-989-7033",
      "Weimann, Broderick" => "558-706-1034",
      "Jerde, Guy" => "971-665-8908",
      "Steuber, Christa" => "459-722-7616",
      "Mohr, Walter" => "659-298-7356",
      "McCullough, Magdalena" => "487-481-0064",
      "Jacobson, Myrtle" => "957-524-9395",
      "Treutel, Sarah" => "143-845-1923",
      "Volkman, Crystel" => "819-976-9332"
    }

    # Write the assertions to prove that you're
    # able to look up the following people's
    # phone numbers in the hash.
    #
    # Augustin Tremblay
    # Sarah Treutel
    # Christa Steuber
    # Ruben Feeney
  end

  def test_birthdays_in_a_school_class
    fourth_grade = {
      "Macy" => "December 2",
      "Coy" => "March 2",
      "Alf" => "May 12",
      "Rebecca" => "October 16",
      "Corbin" => "May 18",
      "Raquel" => "July 24",
      "Delilah" => "October 31",
      "Breana" => "May 30",
      "Jamey" => "November 8",
      "Charlie" => "October 26"
    }

    # What is Charlie's birthday?
    # What is Coy's birthday?
    # What is Raquel's birthday?
  end

  # The Heller family has many dogs.
  # You know the dogs names, but since
  # you're quite ignorant about breeds of
  # dog, you have to ask them about the breed
  # of a dog.
  #
  # The question we're asking here is:
  #
  # Hey, I know this dog is named Ladybug.
  # What breed is she?
  # Answer: poodle.
  def test_add_more_pets
    pets = {
      'Rex' => 'bulldog',
      'Ladybug' => 'poodle',
      'Scotch' => 'Labrador'
    }

    # Now the family gets a new dog.
    # It's a german shephard, and they named
    # him Dante.
    #
    # This is how you add him to the hash:

    pets['Dante'] = 'german shephard'

    # Your turn.
    #
    # Add two more dogs to the hash:
    #
    # 1. A terrier named Angus
    # 2. A poodle named Diamond



    # The next two lines will check that you added
    # them correctly.
    assert_equal 'terrier', pets['Angus']
    assert_equal 'poodle', pets['Diamond']
  end

  # Keys don't have to be strings.
  def test_wines_by_year
    wines = {
      2001 => 'Chateauneuf du Pape'
      # more wines here
    }
    # add simple lookup tests / assertions
  end

  def test_waiting_list_at_the_post_office
    people = {
      289 => "August Glover",
      # 290 accidentally got thrown in the bin
      291 => "Gordon Johnston"
      # add more people
    }
    # add simple lookup tests / assertions
  end

  # TODO: Add looping examples, for example
  # Find all the names of the poodles.
  # Find all the wines from 2003.
  # Find everyone with a birthday in March.
end

