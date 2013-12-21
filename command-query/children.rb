class Children

  def initialize
    @kids = []
  end

  def eldest
    unless @kids.empty?
      @kids.sort.first.name
    end
  end

  def << (child)
    @kids << child
  end

  def sort
    @kids.sort {|k| k.age <=> k.age } 
  end
end
