# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    # @name = name
    # @grade = grade
  if @roster[grade] == nil
     @roster[grade] = []
     @roster[grade] << name
  else
     @roster[grade] << name
  end
  end

  def grade(grade)
    @roster[grade]
  end

  # def sort
  #    new_list = {}
  #   # students.each do { |grade,students|
  #   #   puts
  #   #   new_list[grade] = students.sort
  #   # }
  #   @roster.each {|grd,std|
  #     new_list[grd] = std.sort
  #   }
  #   new_list
  # end
  def sort
  new_array = {}
  roster.each { |a,b|
    new_array[a]=b.sort!
  }
  new_array
  end

end
school = School.new("Bayside High School")
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)

puts school
puts school.roster

puts school.sort({7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]})
