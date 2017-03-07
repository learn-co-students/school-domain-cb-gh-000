# code here!

class School
    attr_accessor :roster
    
  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(name, grade)

    if !@roster.key?(grade)
      @roster[grade] = []
    end

    @roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = @roster[grade].sort
    end
  end
end