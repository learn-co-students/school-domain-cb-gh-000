# code here!

class School

    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(studentName, grade)
        if @roster.key?(grade) == true
            @roster[grade] << studentName
        else
            @roster[grade] = []
            @roster[grade] << studentName
        end
    end

    def roster
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            value.sort!
        end
    end

end
