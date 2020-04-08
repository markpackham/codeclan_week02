require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../drink")

class DrinkTest < MiniTest::Test
  def setup()
    @drink = Drink.new("Vodka",10)
    @drink2 = Drink.new("Free Grog",0)
  end

  def test_get_name
    assert_equal("Vodka", @drink.name)
  end

  def test_get_price__costs_money
    assert_equal(10, @drink.price)
  end

  def test_get_price__is_free
    assert_equal(0, @drink2.price)
  end

end
