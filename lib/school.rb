# code here!
require 'pry'
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = Hash.new { |hash, key| hash[key] = [] }
  end

  def add_student(student, grade)
    @student = student
    @student_array = @roster[grade] << student
  end

  def grade(grade)
    @grade = grade
    @roster[grade]
  end

  def sort
    new_roster = {}
    @roster.each do |a, b|
      new_roster[a] = b.sort
    end
    new_roster
  end
end
