# code here!
class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if !roster[grade]
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted_students = {}
    @roster.each {|name, grade| sorted_students[name] = grade.sort}
    sorted_students
  end
end
