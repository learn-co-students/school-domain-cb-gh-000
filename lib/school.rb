# code here!
class School
	def initialize(name)
		@name = name
		@roster = {}
	end

	def roster
		@roster
	end

	def add_student(student_name, grade)
		if @roster.key?(grade) == false
			@roster[grade] = []
			@roster[grade] << student_name	
		else 
			@roster[grade] << student_name
		end
		
		puts @roster
	end

	def grade(grade_key)
		@roster[grade_key]
	end

	def sort
		@roster.map { |k,v| [k,v.sort] }.to_h
	end
end

#lol = School.new("lol")
#puts lol.roster