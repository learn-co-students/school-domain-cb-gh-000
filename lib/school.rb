# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !(@roster.include?(grade))
      @roster[grade] = []
    end
    @roster[grade].push(name)
  end

  def grade(gradee)
    @roster[gradee]
  end

  def sort
    noveu_roster = {}
    @roster.each do |grade, estudiante|
      noveu_roster[grade]= estudiante.sort
    end
    noveu_roster
  end

end
