class Child
  include Comparable
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def <=>(other)
    other.age <=> self.age
  end
end
