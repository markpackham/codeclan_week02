class PetShop
  attr_reader :name, :total_cash, :pets_sold

  def initialize(name, pets, total_cash)
    @name = name
    @pets = pets
    @total_cash = total_cash
    @pets_sold = 0
  end

  def stock_count()
    return @pets.count()
  end

  def increase_pets_sold()
    @pets_sold += 1
  end

  def increase_total_cash(cash)
    @total_cash += cash
  end

  def add_pet(pet)
    @pets << pet
  end

  def remove_pet(pet)
    @pets.delete(pet)
  end
end
