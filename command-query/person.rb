class Person
 #attr_reader :age
  def initialize
    @age = 0
  end

 def age
   @age
 end

 def happy_birthday
   @age += 1
 end
end
