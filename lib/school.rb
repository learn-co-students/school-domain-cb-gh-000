# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.keys.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name_array|
      name_array.sort!
    end
  end
end
