class Child
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def sort
    self.sort {|a, b| a.age <=> b.age }
  end
end
