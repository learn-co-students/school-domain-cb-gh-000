# code here!
class School
  attr_accessor :name, :roster

    def initialize name
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
      if !@roster.keys.include?(grade)
        @roster[grade]= []
      end
      @roster[grade] << name
    end

    def grade(num)
      @roster[num]
    end

    def sort
      sorted = {}
        @roster.each do |grade, students|
          sorted[grade] = students.sort
        end
      sorted
    end
end
