# code here!
class School 
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def roster
    @roster 
  end 
  
  def add_student(name, grade)
    if @roster.keys.include?(grade) == false 
      @roster[grade] = []
    end 
    @roster[grade] << name 
  end 
  
  def grade(num)
    @roster[num]
  end 
  
  def sort 
    ret = {}
    @roster.each do |id, value|
      ret[id] = value.sort
    end 
    ret 
  end 
  
end 
      