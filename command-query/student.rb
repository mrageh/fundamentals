class Student
  attr_reader :grade

  def initialize
    @times   = 2
    @grades  = ['A', 'B', 'C', 'D', 'F']
    @grade   = @grades[@times]
  end

  def study
    @times -= 1
    @times = 0 if @times < 0
    @grade = @grades[@times]
  end

  def slack_off
    @times += 1
    @times = 4 if @times > 4
    @grade = @grades[@times]
  end
end
