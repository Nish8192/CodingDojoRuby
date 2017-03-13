class AppleTree
    attr_accessor :age
    attr_reader :height, :apple

    def initialize
        @age = 0
        @height = 10
        @apple = 0
    end

    def yearGoneBy
        @age += 1
        @height *= 1.1
        if @age > 3 && @age <= 10
            @apple += 2
        end
        self
    end

    def pick_apples
        @apple = 0
        self
    end
end
