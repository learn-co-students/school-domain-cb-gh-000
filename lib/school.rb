# code here!

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, roll_no)
    if(@roster[roll_no] == nil)
      @roster[roll_no] = [name]
    else
      @roster[roll_no] << name
    end
  end
  def grade(n)
    @roster[n]
  end
  def sort
    @roster = @roster.sort_by {|grade, names| grade}
    @roster = @roster.to_h
    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end
    @roster
  end
end
