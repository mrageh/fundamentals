class Student
  attr_reader :grade

  def initialize
    @times = 0
    @grades = ['C','B','A']
    @grade = @grades[@times]
  end

  def study
    @times += 1
    @grade = @grades[@times]
  end
end
