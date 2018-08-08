require 'pry'
# code here!
class School
  def initialize(school_name)
    @name = school_name
    @roster = {}
    # binding.pry
  end 
  
  def roster
    @roster
  end
  
  def add_student(name,grade)
    if !@roster.key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end 
  
  def grade(grade)
    @roster[grade]
  end 

  def sort 
    result = {}
    @roster.each do |k,v|
      result[k] = v.sort
    end 
    
    result
  end 
end 