require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../customer")
require_relative("../pub")
require_relative("../drink")

class CustomerTest < MiniTest::Test
  def setup()
    @customer = Customer.new("Bob",50)
    @customer2 = Customer.new("Hobo",0)
    @pub = Pub.new("Friendly Arm Inn",1000,[])
    @drink = Drink.new("Vodka",10)
    @drink2 = Drink.new("Free Grog",0)
  end

  def test_get_name
    assert_equal("Bob", @customer.name)
  end

  def test_get_wallet__has_money
    assert_equal(50, @customer.wallet)
  end

  def test_get_wallet__has_no_money
    assert_equal(0, @customer2.wallet)
  end

  def test_decrease_wallet_amount()
    assert_equal(40, @customer.decrease_wallet_amount(10))
  end

  def test_buy_drink
    drink = @drink.price
    @customer.buy_drink(@pub,drink)
    assert_equal(1010, @pub.till)
    assert_equal(40, @customer.wallet)
  end

end
