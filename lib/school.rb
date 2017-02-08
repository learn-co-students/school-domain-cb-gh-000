# code here!
class School
  attr_accessor :name, :roster

  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(stname, mark)
    if !@roster.keys.include?(mark)
      @roster[mark] = []
    end
    @roster[mark]
    @roster[mark] << stname
  end

  def grade(int)
    @roster[int]
  end

  def sort
    @roster = @roster.each do |keys, pair|
      @roster[keys] = pair.sort
    end
  end
end

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.roster
school.grade(9)
school.sort