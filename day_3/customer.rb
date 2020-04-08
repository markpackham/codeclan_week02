class Customer
  attr_accessor :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0
  end

  def decrease_wallet_amount(amount)
    @wallet -= amount
  end

  def buy_drink(pub, drink)
    return "You are too young to buy drinks" if (@age < 18)
    if (drink > -1 && pub.till > -1)
      pub.till += drink
      @wallet -= drink
    end
    return nil
  end
end
