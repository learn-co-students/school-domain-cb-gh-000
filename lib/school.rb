# code here!
class School

  attr_accessor :roster, :name


  def initialize(name)
    @name = name
    @roster = Hash.new
  end


  def add_student(name, grade)
    if not @roster.include?(grade)
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, list|
      roster[grade] = roster[grade].sort
    end
    @roster
  end
end
