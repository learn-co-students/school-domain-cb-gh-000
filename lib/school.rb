class School
  attr_reader :roster, :add_student, :grade, :sort
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  
  def add_student(student, grade)
    if @roster.key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    @roster.values_at(grade).flatten
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end
