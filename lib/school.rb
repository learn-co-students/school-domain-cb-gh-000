class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student_name, grade)
		if !@roster.has_key?(grade)
			@roster[grade] = []
			@roster[grade] << student_name
		else
			@roster[grade] << student_name
		end
	end
  def grade(grade)
    @roster[grade]
  end
  def sort
    sorted = {}
    @roster.each{|k,v|
      sorted[k]= v.sort
    }
    sorted
  end
end
