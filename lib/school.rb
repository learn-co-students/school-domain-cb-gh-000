class School
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster.keys.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, values|
      @roster[key] = @roster[key].sort
    end
    Hash[@roster.sort]
  end
end
