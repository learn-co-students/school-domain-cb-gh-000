# code here!
class School
  attr_reader :roster
  def initialize(roster)

    @roster = {}
  end



  def add_student(student, grade)

    @roster[grade] = Array.new if !@roster.keys.include?(grade)

    return @grade = @roster[grade] << student
  end



  def grade(grade)
    return @roster[grade]
  end

  
  def sort
    @roster.each do |grade, student|
      student.sort!
    end
    return @roster
  end
end
