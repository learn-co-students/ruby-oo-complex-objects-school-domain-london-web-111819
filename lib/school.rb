# code here!
require "pry"

class School
    
    attr_accessor :studentname,:studentgrade, :grade_requested

    def initialize(schoolname)
        @schoolname = schoolname
        @roaster_hash={}
    end

    def roster
        @roaster_hash
    end

    def add_student(studentname,studentgrade)
        @roaster_hash[studentgrade]=[] if @roaster_hash[studentgrade]==nil
        @roaster_hash[studentgrade].push(studentname)
        #binding.pry
    end

    def grade(grade_requested)
        @roaster_hash[grade_requested]
    end

    def sort
        new_hash={}
        @roaster_hash.each {|key,value|
            new_hash[key]=value.sort
        }
        new_hash
    end

end

ial = School.new("ial")
ial.add_student("Basri",9)
ial.add_student("Zeynep",9)
#binding.pry
ial.grade(9)