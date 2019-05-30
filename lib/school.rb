class School 
  
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name,student_grade)

    @roster[student_grade] ||= []
    @roster[student_grade] << student_name
    
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    new_array = {}
    @roster.each { |a,b|
      new_array[a]=b.sort!
    }
    new_array
      
  end
  
end 



