# code here!
class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      # NOTE: Not sure if its a good practice modify the "current iterating value" of the hash.
      @roster[grade] = students.sort
    end
    @roster
  end
end
