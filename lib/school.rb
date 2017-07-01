class School
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map { |k,v| [k, v.sort] }.to_h
  end
end
