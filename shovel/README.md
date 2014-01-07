# Shovel

Short introduction to `<<`, also known as _the shovel operator_,
which isn't really an operator at all. It's a method.

Several classes in Ruby Core that have `<<` defined on them, for example:

* String
* Array
* Fixnum

Also, there are classes in the Ruby Standard Library that have a `<<` method:

* Date
* CSV::Row

It is also perfectly legal to define a `<<` method yourself:

```ruby
def <<(thingy)
  # now use thingy somehow
end
```

## Exploration

* `shovel_test.rb` - get acquainted with `<<`
