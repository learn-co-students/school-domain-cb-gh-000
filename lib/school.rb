class School

  attr_reader :school_name
  attr_reader :roster

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def add_student(student,grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end

  end

end
