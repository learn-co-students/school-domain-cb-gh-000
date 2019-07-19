# code here!

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, classy)
    if !roster.key?(classy)
      roster[classy] = []
    end
    roster[classy] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster = roster.sort.to_h
    @roster.each do |key, value|
      value = value.sort
      @roster[key] = value
    end
  end
end
