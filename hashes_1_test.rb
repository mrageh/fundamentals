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
    skip
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

  def test_waiting_list_at_the_post_office
    skip
    people = {
      289 => "August Glover",
      291 => "Gordon Johnston",
      292 => "Leila Little",
      295 => "Jefferey Barrows",
      296 => "Nils Gorczany",
      297 => "Imelda Leffler",
      299 => "Merlin Wyman",
      305 => "Aaron Mills",
      306 => "Mark Muller",
      309 => "Jackson Crooks"
    }
    # Write the assertions to prove that you're
    # able to look up the following people by
    # their queuing number.
    #
    # Leila Little
    # Mark Muller
    # Aaron Mills
    # August Glover
  end

  def test_birthdays_in_a_school_class
    skip
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

  # In Scrabble we know what the letter is, but not
  # the score. We can look up the score in a hash.
  def test_scrabble_scores
    skip
    scores = {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2, "E"=>1, "F"=>4,
      "G"=>2, "H"=>4, "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3, "Q"=>10, "R"=>1,
      "S"=>1, "T"=>1, "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }

    # How much is the letter Q worth?
    # How about J?
    # And F?
    # Each time, prove that you're right with an assertion.
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
    skip
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

  def test_hashes_and_arrays_can_seem_kind_of_similar
    skip
    # This is an array
    line_of_people = ["Alice", "Bob", "Charlie", "Dave", "Eve"]

    # This is how we find the person who is in position 1:
    # line_of_people[1]. Let's make sure we found the right
    # one:
    assert_equal "Bob", line_of_people[1]

    # Your turn.
    # Who is at position 3?
    # Who is at position 5?

    # This is how you add a new person to the end of the line.
    line_of_people << "Fred"

    # Your turn.
    # Add George to the line.
    # Add Harriet to the line.

    # Who is at position 5 now? Write an
    # assertion to prove that you are right.


    # Now we're done with the array.
    # This is a hash with numeric keys
    crowd_of_people = {
      0 => "Alice",
      1 => "Bob",
      2 => "Charlie",
      3 => "Dave",
      4 => "Eve"
    }

    # Notice that people aren't lined up. It's more like
    # they're milling around the room, and they've been given
    # a number, like at a restaurant where they'll call your
    # number when your order is ready.

    # This is how we find the person with number 1:
    # crowd_of_people[1].
    # Let's make sure we found the right one:
    assert_equal "Bob", crowd_of_people[1]

    # This is how you add more people to the hash:
    crowd_of_people[5] = "Fred"

    # Look. We can give them any number.
    crowd_of_people[42] = "George"
    crowd_of_people[-1] = "Harriet"

    # Your turn.
    # Add Isabelle to the crowd.
    # Add Johnathon to the crowd.


    # Who is at position 4?
    # Who is at position 5?
    # Who is at position 6?
    # Who is at position 42?
  end

  def test_find_all_the_same_breeds
    skip
    pets = {
      'Rex' => 'bulldog',
      'Ladybug' => 'poodle',
      'Scotch' => 'Labrador',
      'Ruby' => 'Labrador',
      'Diamond' => 'poodle',
      'Bones' => 'bulldog'
    }

    # We can only look things up by key, so if we want
    # to do anything by the values, we have to loop through
    # everything.
    #
    # This is how to loop through to find all the poodles:
    poodles = []
    pets.each do |name, breed|
      if breed == 'poodle'
        poodles << name
      end
    end
    assert_equal ['Ladybug', 'Diamond'], poodles

    # Your turn.
    # Find all the Labradors.
    # Find all the bulldogs.
  end

  def test_books_by_publishing_year
    skip
    books = {
      'Dragonrider' => 1968,
      'Dune' => 1965,
      'Foundation' => 1951,
      'A Wrinkle in Time' => 1962,
      'The Hitchhiker\'s Guide to the Galaxy' => 1979,
      'Neuromancer' => 1984,
      'A Clockwork Orange' => 1962,
      '2001: A Space Odyssey' => 1968,
      'Fahrenheit 451' => 1954,
      'The Puppet Masters' => 1951,
      'Cryptonomicon' => 1999,
    }

    # Find all the books that were published in 1968.
    # Write an assertion to prove that you're right.
    # Now do the same for 1962.
    # Now find all the books published in 1951.
  end

  def test_birthdays_in_a_school_class
    skip
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

    # Find everyone whose birthday is in May.
    # Find everyone who has a birthday in October.
  end

end

