# code here!

class School

  attr_accessor :roster
  attr_accessor :name
   
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(number)
    if @roster.has_key?(number)
      @roster[number]
    end
  end

  def sort()
    @roster.each{|key,value| @roster[key] = value.sort!} 
    @roster
  end
end

s = School.new("deneme")
s.add_student("sinan", 5)
puts s.roster