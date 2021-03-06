class MathDojo
    attr_reader :result
    def initialize
        @result = 0
        self
    end

    def add *nums
        for x in nums
            if x.class == Array
                x.each{|i| @result += i}
            else
                @result += x
            end
        end
        self
    end

    def subtract *nums
        for x in nums
            if x.class == Array
                x.each{|i| @result -= i}
            else
                @result -= x
            end
        end
        self
    end

end

puts challenge1 = MathDojo.new.add(2).add(2,5).subtract(3,2).result
puts challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
