# code here!
require 'pry'
class School
    attr_accessor :roster, :name, :grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade].push(name)
            
        else
            @roster[grade] = [name]           
        end
        @roster
    end

    def grade(grade_number)
        @roster[grade_number]
    end

    def sort
        @roster.each do |key, value|
            @roster[key] = value.sort
        end
    end
end

