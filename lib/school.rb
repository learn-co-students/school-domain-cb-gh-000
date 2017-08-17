                      # Domain Models #
# A domain model is a representation of real-world concepts in software.
# The concept of domain modeling is key in object orientation. In object
# orientation, classes are thought of as templates for objects. The instances
# of classes are thought of as objects. For example, a Person class produces
# people objects that have attributes and behaviors, as described and enacted
# by instance methods.

# The School class would be referred to as a "model" in the domain model
# context.
class School
  attr_reader :roster
  def initialize(roster)
    # Initializes an empty hash that will be built to contain keys of grades.
    # The value of each key will be an array of student names.
    @roster = roster
    @roster = {}
  end


  # Method adds elements (students) to the array that is the value of the
  # 'roster' hash.
  def add_student(student, grade)
    # Creates a new 'grade' integer to add to the array, but only if the grade
    # does not already exists. This avoids resetting the array if a student with
    # an identical grade is added which would reset that list of student names.
    @roster[grade] = Array.new if !@roster.keys.include?(grade)
    # Pushes the student into the array of the corresponding grade number.
    return @grade = @roster[grade] << student
  end


  # Method accepts the argument of a grade and returns all students in that grade.
  def grade(grade)
    return @roster[grade]
  end

  # Method sorts all of the the arrays of students by ascending numerical order
  # of grade number.
  def sort
    @roster.each do |grade, student|
      student.sort!
    end
    return @roster
  end
end
