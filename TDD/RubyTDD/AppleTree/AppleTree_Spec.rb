require_relative 'AppleTree'

RSpec.describe AppleTree do
    before (:each) do
        @tree = AppleTree.new
    end

    it "should have an age attribute w/ getter and setter methods" do
        age = @tree.age
        @tree.age = 10
    end

    it "should have height and age attributes w/ only getter methods" do
        expect{@tree.height = 5}.to raise_error(NoMethodError)
        expect{@tree.apple = 5}.to raise_error(NoMethodError)
        height = @tree.height
        apple = @tree.apple
    end

    it "should have a method called yearGoneBy that adds one year to age, increases the height by %10 and raises the apple count by two" do
        @tree.yearGoneBy
        @tree.age.should be 1
        @tree.height.should be 11.0
        @tree.yearGoneBy.yearGoneBy.yearGoneBy
        @tree.apple.should be 2
    end

    it "should not grow apples for the first three years of its life" do
        @tree.yearGoneBy
        @tree.apple.should_not be > 0
    end

    it "should have a method called pick_apples that takes all of the apples off the tree" do
        @tree.yearGoneBy.yearGoneBy.yearGoneBy.yearGoneBy.yearGoneBy.yearGoneBy
        @tree.pick_apples
        @tree.apple.should be 0
    end

    it "should not grow apples if the tree is older than 10" do
        @tree.age = 11
        @tree.yearGoneBy
        @tree.apple.should be 0
    end

end
