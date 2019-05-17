# code here!
class School

  attr_accessor :roster, :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name,grade)
    if @roster.key?(grade) == true
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade,names| names.sort!}
  end


end
