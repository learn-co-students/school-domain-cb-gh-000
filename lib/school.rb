class School
  attr_reader :roster
  def initialize(name)
    @roster = {}
  end
  def add_student(student_name, grade)
    if @roster.key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name]
    end
  end
  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each { |grade, students|
      @roster[grade] = students.sort
    }
    @roster
  end
end
