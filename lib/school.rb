class School
  attr_reader :roster

  def initialize(title)
    @roster = {}
    @title = title
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster.key?(grade)
    @roster[grade] << name
  end

  def grade(key)
    @roster[key]
  end

  def sort
    @roster.map { |grade, students| [grade, students.sort] }.to_h
  end
end
