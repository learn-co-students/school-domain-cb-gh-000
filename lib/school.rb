class School
  #attr_accessor
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    roster = {}
    @roster = roster
  end

  def add_student(name, grade)
    if roster.include?(grade)
      roster[grade] << name
    else
      roster[grade] = [] #create new key in hash
      roster[grade] << name
    end
  end

  def grade(customGrade)
    roster.each do |rosterGrade, name|
      if customGrade == rosterGrade
        return name
      end
    end
  end

  def sort
    sorted = {}
    roster.each do |grade, names|
      sorted[grade] = names.sort
    end
    sorted
  end

end
