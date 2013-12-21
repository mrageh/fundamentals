class Adult
  def initialize
    @sober = true
    @drink = 0
  end

  def sober?
    @sober
  end

  def consume_an_alcoholic_beverage
    @drink += 1
    @sober = false if @drink >= 3
  end
end
