# code here!class School
class School
  
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster.key?(grade) ? @roster[grade].push(student) : @roster.store(grade, [student])
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
    @roster
  end

end
