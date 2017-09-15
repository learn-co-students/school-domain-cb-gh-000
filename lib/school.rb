# code here!
class School
attr_reader :roster
def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name,grade)
    @roster[grade] = [] if @roster.keys.include?(grade) == false
    @roster[grade.to_i] << name
end

def grade(num)
  coll = []
  @roster[num].each do |student|
    coll << student
  end
  coll
end

def sort
  sorted = {}
  roster.each do |grade, students|
    sorted[grade] = students.sort
  end
  sorted
end

end
