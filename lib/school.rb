# code here!
require 'pry'
class School
  attr_reader :roster
  def initialize name
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade gradenum
    @roster[gradenum]
  end

  def sort
    @roster.each do |key,value|
      value.sort!
    end
    @roster.sort.to_h
  end



end
