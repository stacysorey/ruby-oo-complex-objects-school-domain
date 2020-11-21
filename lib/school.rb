require "pry"
# code here!
class School
    attr_accessor :school_name, :roster, :student_name, :grade

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new{ |h, k| h[k] = [] }
    end
    
    def add_student(student_name, grade)
      @roster[grade] << student_name
    end 

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map {|k,v| v.sort!}
        @roster
    end
end
