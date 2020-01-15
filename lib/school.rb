class School 
  
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def roster 
    @roster
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
      sorted
  end
  
  
end