class Human
    attr_accessor :health, :strength, :stealth, :intelligence
    def initialize(health = 100, strength = 3, stealth = 3, intelligence = 3)
        @health = health
        @strength = strength
        @stealth = stealth
        @intelligence = intelligence
    end

    def attack(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 10
            return true
        end
        false
    end
end
