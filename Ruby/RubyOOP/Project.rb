class Project
    attr_accessor :name, :desc
    def initialize(name, desc)
        @name = name
        @desc = desc
    end

    def elevator_pitch
        puts "This project is named: #{@name} and it is #{@desc}"
    end
end

project1 = Project.new("Project1", "The best project. The biggest project. I'm building it.")
puts project1.name
project1.elevator_pitch
