require_relative 'Bank_Account'

RSpec.describe BankAccount do

    before(:each) do
        @Account = BankAccount.new(100, 100)
    end

    it "has a getter method for getting the checking account balance and the total balance" do
        @Account.chBalance.should_not be nil
        @Account.totBalance.should_not be nil
    end

    it "has a function that allows the user to withdraw cash" do
        startBal = @Account.totBalance
        @Account.withCh(50)
        finBal = @Account.totBalance
        expect(finBal < startBal)
    end
end
