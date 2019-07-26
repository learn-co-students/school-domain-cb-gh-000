# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(studentname, grade)
    @studentname = studentname
    @grade = grade

    if @roster.key?(grade)

      @roster[grade] << studentname
    else
      @roster[grade] = []
      @roster[grade] << studentname
    end
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    newHash = {}
    @roster.each do |grade, names|
      newHash[grade]= []
      newHash[grade] << [names.sort!]
    end
  end
end
