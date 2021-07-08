# code here!

class School

  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, id)
    if !@roster[id]
      @roster[id] = []
    end
    @roster[id] << name
  end

  def grade(id)
    @roster[id] || []
  end

  def sort
    @roster.each do |_, value|
        value.sort!
    end
  end

end
