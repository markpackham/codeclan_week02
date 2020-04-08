class Customer
    attr_reader :name, :wallet

    def initialize(name, wallet)
      @name = name
      @wallet = wallet
    end

    def decrease_wallet_amount(amount)
      @wallet -= amount
    end

    def buy_drink(pub,drink)
      if(drink > -1 && pub.till > -1)
        pub.till += drink
        @wallet -= drink
      end
      return nil
    end

end