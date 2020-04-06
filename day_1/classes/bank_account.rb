class BankAccount
  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

  def holder_name()
    return @holder_name
  end

  def balance()
    return @balance
  end

  def type()
    return @type
  end

  def set_holder_name(name)
    @holder_name = name
  end

  def set_balance(balance)
    @balance = balance
  end

  def set_type(type)
    @type = type
  end
end
