class MilkBottle

  def full?
    !@spilled
  end

  def spill
    @spilled = true
  end
end
