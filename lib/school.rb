# code here!

class School

    attr_accessor :student, :grade
    
    def initialize(school) 
        @school = school
        @hash = {}
        
    end  

    def roster
        @hash
    end 

    def add_student(student, grade)
            if @hash[grade] == nil
                @hash[grade] = []
                @hash[grade] << student  
            else
                @hash[grade] << student 
            end
    end

    def grade (grade)
        @hash[grade]
    end

    def sort 
        new_hash = {}
        @hash.each do |grade, students|
            new_hash[grade] = students.sort
        end 
        return new_hash
    end
    
end 