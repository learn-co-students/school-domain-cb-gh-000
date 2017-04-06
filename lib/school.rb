# code here!
class School
  attr_reader:roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster[grade].kind_of?(Array)
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @grade = grade
    @roster[@grade]
  end

  def sort
    #sorting keys
    @roster = roster.sort.to_h


    #sorting values
    @roster.each do |key, value_array|
      value_array.sort!
    end

    return @roster

  end


end
