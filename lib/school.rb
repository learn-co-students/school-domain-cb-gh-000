
# code here!
class School
  attr_reader :roster
  def initialize(name)
    @name=name
    @roster=Hash.new {}
  end

  def add_student(student,grade)
    if roster.include?(grade)
      roster[grade]<< student
    else
      roster[grade]=[]
      roster[grade]<< student
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade,student|
      sorted[grade]=student.sort
    end
    sorted
  end

end
