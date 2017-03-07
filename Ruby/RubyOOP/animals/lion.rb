require_relative 'mammal'

class Lion < Mammal
    attr_reader :health
    def initialize health=170
        super health
    end

    def fly
        @health -= 10
        self
    end

    def attack_town
        @health -= 50
        self
    end

    def eat_humans
        @health += 20
        self
    end

end

myLion = Lion.new
myLion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
