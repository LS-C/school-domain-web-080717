# code here!
require 'pry'

class School
    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade]<<student_name
        else
            @roster[grade]=[student_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end


    def sort
        @roster.each { |grade, student| student.sort! }
    end


end

school=School.new('Flatiron')
school.add_student("Danny", 9)
school.add_student("Jen", 9)




