# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade].kind_of?(Array)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
