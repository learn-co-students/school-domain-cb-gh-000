class School
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(name, grade)
    @name = name 
    @grade = grade
    
    if roster[@grade] != nil
      roster[@grade] << @name
    else 
      roster[@grade] = [@name]
    end
  end 
  
  def grade(grade)
    @grade = grade
    return roster[@grade]
  end 
  
  def sort 
    roster.each do |grade, name|
      name.sort!
    end 
  end
end 