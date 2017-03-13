require_relative 'HumanI'

RSpec.describe Human do
    before(:each) do
        @human1 = Human.new
    end

    context "has four attributes: strength, intelligence, stealth, and health" do
        it "has strength" do
            @human1.strength.should_not be nil
        end
        it "has intelligence" do
            @human1.intelligence.should_not be nil
        end
        it "has stealth" do
            @human1.stealth.should_not be nil
        end
        it "does not have health" do
            @human1.health.should_not be nil
        end
    end

    context "has proper default values" do
        it "has a default value of 3 for strength" do
            @human1.strength.should == 3
        end
        it "has a default value of 3 for intelligence" do
            @human1.intelligence.should == 3
        end
        it "has a default value of 3 for stealth" do
            @human1.stealth.should == 3
        end
    end

    it "only attacks objects that inherit from the Human class" do
        @human2 = Human.new
        @human1.attack(@human2).should eq true
    end
end
