# code here!
class School
	def initialize (name)
		@name = name
		@roster = {}
	end

	def roster=(hash)
		@roster = hash
	end

	def roster
		@roster
	end

	def add_student(name, grade)
		if @roster.keys.include?(grade)
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
		@roster.each do |grade, students|
			students.sort!
		end
	end

end
