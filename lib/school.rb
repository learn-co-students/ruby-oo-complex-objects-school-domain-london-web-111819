require 'pry'
class School
    attr_accessor :roster, :name, :grade, :student

  def initialize(name)
    @name = name
    @roster = {}
  end

 
  def add_student(name, grade)
   
   if !@roster.include?(grade)
    @roster[grade] = []
   end
   @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student_names|
      @roster[grade]=student_names.sort
  end
end

end
