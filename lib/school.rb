class School
  attr_accessor :roster

  def initialize(name)
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if !roster[grade]
    @roster[grade] << name
  end

  def grade(n)
    @roster[n]
  end

  def sort
    result = {}
    @roster.each do |k, v|
      result[k] = v.sort      
    end
    result
  end
end
