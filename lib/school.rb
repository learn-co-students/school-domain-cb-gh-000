require 'pry'
# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grades_students)
    @roster[grades_students]
  end

  def sort
    if @roster
      @roster.collect do |grade, students|
        students.sort!
      end
    end
    @roster
  end
end
