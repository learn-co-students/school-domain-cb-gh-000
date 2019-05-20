# code here!
class School
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end
    @roster
  end
end
