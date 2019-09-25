class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new{|hash, key| hash[key] = []}
  end

  def add_student(name, grade)
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
   @roster.each do |key, value|
      value.sort!
    end
  end

end
