class Customer
    attr_reader :name, :wallet

    def initialize(name, wallet)
      @name = name
      @wallet = wallet
    end

    def decrease_wallet_amount(amount)
      @wallet -= amount
    end

end