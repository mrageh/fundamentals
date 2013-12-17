class Beers
  def initialize
    @bottles = 99
  end

  def inventory
    @bottles
  end

  def take_one_down_and_pass_it_around
    @bottles -= 1
  end

  def restock
    @bottles = 99
  end
end
