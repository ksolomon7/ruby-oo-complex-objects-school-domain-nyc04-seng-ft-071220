# code here!
require 'pry'
class School

    attr_accessor :name
    attr_reader :roster
    def initialize(name)
        @name=name
        @roster={}
    end

    def add_student(student_name, grade)

        if !@roster[grade]
            @roster[grade]=[student_name]
        elsif @roster[grade]
            @roster[grade]<<student_name
        end   
    end

    def grade(grade)
       @roster[grade] 
    end

    def sort
       sorted_hash={}
       @roster.each do |grade, student|
         sorted_hash[grade]= student.sort
       end
       sorted_hash
    end
end
