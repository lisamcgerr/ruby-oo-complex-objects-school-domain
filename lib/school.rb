class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = Hash.new
    end

    def add_student(student_name, grade)
        if @roster.keys.any?(grade)
        @roster[grade] << student_name
        else 
        @roster[grade] = [ ]
        @roster[grade] << student_name
        end
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.values.flatten.sort
    end

end

school = School.new("Bayside High School")
