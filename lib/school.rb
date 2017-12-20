# code here!
class School
  attr_accessor :name, :roster

  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(student_name, grade)
    if !@roster.keys.include?(grade)
      @roster[grade] = ["#{student_name}"]
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each {|grade, students|
      sorted[grade] = students.sort
    }
    sorted
  end
end
