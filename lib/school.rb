# code here!
class School
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = Hash.new
  end
  def add_student(name, grade)
    @roster.include?(grade) ? @roster[grade] << name : @roster[grade] = [name]
  end
  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|key, value| @roster[key] = value.sort}
  end
end
