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

  def get_total_value_of_pets()
    total = 0
    for pet in @pets
      total += pet.price
    end
    return total
  end

  def pay_for_pet(amount)
    @cash -= amount
  end
end
