# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  # def roster
  #
  # end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end

    @roster[grade] << name
  end

  def grade(gr)
    @roster[gr]
  end

  def sort
    sorted = {}
    @roster.each do | grade, names |
      sorted[grade] = names.sort
    end

    sorted
  end
end
