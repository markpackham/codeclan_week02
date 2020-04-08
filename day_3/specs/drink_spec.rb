require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../drink")

class DrinkTest < MiniTest::Test
  def setup()
    @drink = Drink.new("Vodka",10)
  end

  def test_get_name
    assert_equal("Vodka", @drink.name)
  end

  def test_get_price
    assert_equal(10, @drink.price)
  end

end
