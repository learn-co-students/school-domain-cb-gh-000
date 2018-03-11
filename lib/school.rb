# code here!
class School

  def initialize name
    @roster={}
    @name=name
  end

  def roster
    @roster
  end

  def add_student name,grade
    @roster[grade]=[] if not @roster.keys.include?(grade)
    @roster[grade]<<name
  end

  def grade grade
    @roster[grade]
  end

  def sort
    @roster.each do |grade,name_arr|
      name_arr.sort!
    end
  end

end
