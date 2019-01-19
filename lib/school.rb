class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if self.roster.has_key?(grade)
      self.roster[grade].push(student)
    else
      self.roster[grade] = [student]
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |key, val|
      val.sort!
    end
  end

end
