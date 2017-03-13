class BankAccount
    @@NumberofAccounts = 0
    attr_reader :totBalance
    private
    def genAccNum
        return rand(1000..100000)
    end

    def initialize(chBalance = 0, savBalance = 0)
        @AccNum = genAccNum
        @chBalance = chBalance
        @savBalance = savBalance
        @totBalance = chBalance + savBalance
        @interest_rate = 0.01
        @@NumberofAccounts += 2
    end

    public
    def account_information
        puts "Your account number is #{@AccNum}. In your savings account you have $#{@savBalance} and in your checking account you have $#{@chBalance} for a total of $#{@totBalance}. The interest rate is %#{@interest_rate}!"
    end

    def depCh dep
        @chBalance += dep
        @totBalance = @chBalance + @savBalance
        self
    end

    def depSav dep
        @savBalance += dep
        @totBalance = @chBalance + @savBalance
        self
    end

    def withSav with
        if with > @savBalance
            puts "Sorry, your savings account has insufficient funds :("
        else
            @savBalance -= with
            @totBalance = @chBalance + @savBalance
        end
        self
    end

    def withCh with
        if with > @chBalance
            puts "Sorry, your checking account has insufficient funds :("
        else
            @chBalance -= with
            @totBalance = @chBalance + @savBalance
        end
        self
    end

    def savBalance
        puts "$#{@savBalance} remaining in your savings account!"
        self
    end
    def chBalance
        puts "$#{@chBalance} remaining in your checking account!"
        self
    end
    def totBalance
        puts "$#{@totBalance} remaining in both your checking and savings accounts!"
        self
    end

end

nish = BankAccount.new
nish.depSav(1000).depCh(500).withCh(250).withCh(600)
nish.account_information
