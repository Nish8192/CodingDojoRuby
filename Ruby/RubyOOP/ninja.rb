require_relative 'HumanI'

class Ninja < Human

    def initialize(stealth = 175)
        super
        @stealth = stealth
    end

    def steal(obj)
        if obj.class.ancestors.include?(Human)
            @health += 10
            obj.health -= 10
            return true
        end
        false
    end

    def get_away
        @health -= 15
        self
    end

end
