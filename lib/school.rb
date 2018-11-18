# code here!
class School
  def initialize(name)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student,grade)
    if !@roster.key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(_grade)
    @roster[_grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end
