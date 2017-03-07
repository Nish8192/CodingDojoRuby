require_relative 'HumanI'

class Wizard < Human

    def initialize(health = 50, intelligence = 25)
        super
        @health = health
        @intelligence = intelligence
    end

    def heal
        @health += 10
        self
    end

    def fireball(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 20
            return true
        end
        false
    end

end
