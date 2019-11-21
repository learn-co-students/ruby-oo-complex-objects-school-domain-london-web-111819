# code here!

require 'pry'

class School

    attr_accessor :school_name, :roster

    def initialize (school_name)

        @school_name = school_name
        @roster = {}
        
    end

    def add_student (student_name, grade)

        @student_array = []
        
            if roster.has_key?(grade)

                roster[grade].push(student_name)

            else
                @student_array.push(student_name)
                 roster[grade] = @student_array

                 

            end
    end

    def grade(grade)

        roster[grade]


    end

    def sort

        sorted_roster = Hash[roster.sort]

        sorted_roster.each do |grade, students|
            
            sorted_roster[grade] = sorted_roster[grade].sort

            #binding.pry
        end

      


    end



end