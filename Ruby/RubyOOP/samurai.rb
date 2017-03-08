require_relative 'HumanI'

class Samurai < Human
    @@NumSamurais = 0
    def initialize(health = 200)
        super
        @health = 200
        @@NumSamurais += 1
    end

    def death_blow(obj)
        if obj.class.ancestors.include?(Human)
            obj.health = 0
            return true
        end
        false
    end

    def meditate
        @health = 200
        self
    end

    def how_many
        puts "There are #{@@NumSamurais} samurais murdering things!"
        self
    end
end
Nishant = Samurai.new
Jason = Human.new
Nishant.death_blow(Jason)
Nishant.meditate
puts Nishant.health
puts Jason.health
if Jason.health == 0
    puts "Jason is dead :D"
end
Nishant.meditate.meditate.meditate
puts Nishant.health
