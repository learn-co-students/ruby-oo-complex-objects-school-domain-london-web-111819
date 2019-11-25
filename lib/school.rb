# code here!
class School

    attr_accessor :roster
    attr_reader 

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(student_name,grad)
        roster[grad] ||= []
        roster[grad] << student_name
    end

    def grade(num)
        @roster[num]
    end

    def sort
        sorted_hash = {}
        @roster.sort_by do |k,v|
            sorted_hash[k] = v.sort
        end
        sorted_hash
    end

end