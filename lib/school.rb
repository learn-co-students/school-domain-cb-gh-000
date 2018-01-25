# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    students = @roster[grade]
    @roster[grade] = students ? students << student : [student]
  end

  def grade(score)
    @roster[score]
  end

  def sort
    @roster.sort.map { |e| [e[0], e[1].sort] }.to_h
  end
end
