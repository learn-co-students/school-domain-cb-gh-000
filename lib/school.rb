# code here!
class School

  
  attr_accessor :roster

  def initialize(name)
    @name = name  
    @roster = {}
  end

  def add_student(name, grade)
    unless roster.keys.include?(grade)
      roster[grade] = []
    end
    roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    @roster.each do |key,values|
      values.sort!
    end
  end





end