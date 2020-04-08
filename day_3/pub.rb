class Pub
    attr_accessor :name, :till, :drinks
    
    def initialize(name,till,drinks)
      @name = name
      @till = till
      @drinks = []
    end

    def increase_till_amount(amount)
        @till += amount
    end

    def add_drinks(drink)
      @drinks << drink
    end



end