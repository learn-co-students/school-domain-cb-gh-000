class School

  attr_accessor :student, :grade, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  # add_student is able to add a student, add multiple students to a grade, add students to different grades
  def add_student(student, grade)
    if @roster[grade] == nil
        @roster[grade] = []
        @roster[grade] << student
    else
      @roster[grade] << student
    end
  end

  # grade is able to retrieve students from a grade
  def grade(grade)
    return @roster[grade]
  end

  # sort is able to sort the students
  def sort
    @roster.each do |key, value|
      value = value.sort!
    end
  end
  @roster
end
