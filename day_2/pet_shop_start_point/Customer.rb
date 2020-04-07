class Customer
  attr_reader :name, :cash

  def initialize(name, cash)
    @name = name
    @cash = cash
    @pets = []
  end

  def pet_count()
    return @pets.count()
  end

  def add_pet(new_pet)
        @pets << new_pet
  end
end
