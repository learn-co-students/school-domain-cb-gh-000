# code here!
class School
  attr_accessor
  attr_reader :roster#, :add_student
  STUDENTS = []

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade) # reader - why doesn't writer add_student=(student, grade) pass the test?
    @student = student
    @grade = grade
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|  # iterate through each grade
      @roster[key] = value.sort
    end
  end

end
