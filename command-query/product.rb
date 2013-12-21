class Product
  include Comparable
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def <=>(other)
    self.price <=> other.price
  end
end
