class School
  attr_accessor :roster, :name
#  attr_reader :name


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(sname,grade)
    roster[grade] ||= []
    roster[grade] << sname

  end

  def grade(sgrade)
    roster[sgrade]
  end

  def sort
      sorted ={}
      roster.each do |grade, students|
      sorted[grade] = students.sort
    end
      sorted
  end

end
