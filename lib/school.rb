# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
     @name = name
     @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name

  end
  end

  def grade(grade)
    @roster.map do |student_grade, student_names|
       if grade == student_grade
         return student_names
    end
  end

end

  def sort
    @sort_hash = {}
     @roster.each do |student_grade_sort, student_names_sort|
        sort_hash[student_grade_sort] = student_names_sort.sort
     end
     sort_hash

end
