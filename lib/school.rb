# code here!

class School

  def initialize(name)
    @name=name
    @roster={}
  end

  def roster
    @roster
  end

  def add_student(student_name,grade)
    if @roster[grade].nil?
      @roster[grade]=[]
    end

    @roster[grade]<<student_name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort()

    @roster.each do |key,value|
      @roster[key]=value.sort{|s1,s2| s1<=>s2}
    end
    @roster

  end
end
