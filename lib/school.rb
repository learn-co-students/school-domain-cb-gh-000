class School

  attr_accessor :roser
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.include?(grade)
      roster[grade] << name
    else
      roster[grade] = [name]
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.sort.map do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end

{
  9 => ["Bart Simpson", "Homer Simpson"],
  10 => ["Jeff Baird", "Avi Flombaum"],
  7 => ["Jack Bauer", "Blake Johnson"],
}
