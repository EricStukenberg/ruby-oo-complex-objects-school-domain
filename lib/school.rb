# code here!
require 'pry'
class School
    def initialize(name)
        @school_name = name
        @roster = Hash.new
    end 
    attr_reader :roster, :grade
    
    def add_student(student, grade)
        @grade = grade
        array = Array.new
       # binding.pry
        if(self.roster[grade] == nil)
            array.push(student)
            self.roster[grade] = array
        else
            array = roster[grade]
            array.push(student)
            self.roster[grade] = array

        end

    end 

    def grade(grade)

        return self.roster[grade]
    end 

    def sort() 
        self.roster.each {|key, value| 
            value.sort!
        } 
        return  self.roster
        
    end 
end 