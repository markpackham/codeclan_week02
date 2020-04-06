class BankAccount

  #   attr_reader :holder_name, :balance, :type
  #   attr_writer :holder_name, :balance, :type
  #   attr_accessor does the combined work of attr_reader & attr_writer
  attr_accessor :holder_name, :balance, :type

  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

  # attr_reader does the getter work for us
  #   def holder_name()
  #     return @holder_name
  #   end

  #   def balance()
  #     return @balance
  #   end

  #   def type()
  #     return @type
  #   end

  # attr_writer does the setter work for us
  # we need to make sure we use an "=" when calling the method
  #   def set_holder_name(name)
  #     @holder_name = name
  #   end

  #   def set_balance(balance)
  #     @balance = balance
  #   end

  #   def set_type(type)
  #     @type = type
  #   end

end
