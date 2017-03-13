# code here!
class School
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    @roster[grade] = [] if !@roster.keys.include?(grade)
    @roster[grade] << name
  end

  def roster
    @roster
  end

  def grade(g)
    @roster[g]
  end

  def sort
    @roster.each{|key,value| @roster[key] = value.sort}
    @roster
  end
end