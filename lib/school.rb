# code here!
class School

  def initialize(name)
    @name = name
    @roster={}
  end
  def add_student(name,grade)
    @roster.include?(grade)? @roster[grade]<<name : @roster[grade]=[name]
  end
  def grade(g)
    @roster[g]
  end
  def roster
    @roster
  end
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
