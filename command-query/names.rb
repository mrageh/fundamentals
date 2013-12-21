class Names

  def initialize
    @names = []
  end

  def longest
   @names.sort.first
  end

  def << (*splat)
    @names += splat
  end
end
