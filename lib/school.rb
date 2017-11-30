# code here!
class School
  attr_accessor :roster, :name
  def initialize(name)
    self.roster = {}
    self.name = name
  end

  def add_student(name, cls)
    students = self.roster[cls]
    self.roster[cls] = students ? students << name : [name]
  end

  def grade(cls)
    self.roster[cls]
  end

  def sort
    self.roster.sort.map { |e| [e[0], e[1].sort] }.to_h
  end
end
