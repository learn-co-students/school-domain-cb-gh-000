# code here!
class School
  # @roster = {}


  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    #hash_name[new_key_name]= new_value
    if !@roster.key?(grade)
    @roster[grade] = [] #creates the key (in the hash) and points it to a value of an empty array ( [] )
    @roster[grade].push(name)#adds name to that array (at the given key)
    else
      @roster[grade].push(name)#adds name to that array (at the given key)
    end
    #each key (grade level) points to an array of names
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.each do |key, value|
    sorted_hash[key] = value.sort
    end
    sorted_hash
  end
  
end
