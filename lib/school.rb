# code here!
class School
  ROSTER = {}
  def initialize(name)
    @name = name
  end

  def roster
    ROSTER
  end

  def add_student(name, grade)
    ROSTER[grade] = [] unless ROSTER[grade]
    ROSTER[grade] << name
  end

  def grade(int)
    ROSTER[int]
  end

  def sort()
    ROSTER.each do |grade, list|
      ROSTER[grade] = list.sort()
    end
  end

end
#
# school = School.new("h")
#
# school.add_student("Jeff Baird", 10)
# school.add_student("Blake Johnson", 10)
#
# puts school.roster
# school.sort()
# puts school.sort()
