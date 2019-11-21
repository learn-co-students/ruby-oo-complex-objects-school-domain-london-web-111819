class School
  atrr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] || = []
    @roster[grade].push(student)
  end

  def grade(num)
    @roster[num]
  end

   def sort
      @roster.each do |key, value|
      value.sort!
      end
     @roster
   end

  end

end
