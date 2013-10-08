# Fundamentals

Exercises to grasp and practice fundamental concepts in Ruby.

## Hashes

Hashes have keys and values, and we can look up values
easily if we have the key. (The inverse is not necessarily true.).

## Word

Strings are everywhere. Let's munge them a bit.

## Phrase

More string stuff.

## Anagram

## Scrabble

## Notes

### Arrays vs Hashes

```ruby
def test_loop_in_array
  people = ["Alice", "Bob", "Charlie"]

  # wants one block parameter
  people.each do |person|
    person.inspect
  end
end
```

```ruby
def test_loop_in_hash
  people = {"Annie" => 39, "Jim" => 10, "Barney" => 12}

  # wants two block parameters
  people.each do |name, age|
    "#{name} is #{age} years old"
  end
end
```

