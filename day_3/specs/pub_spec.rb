require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub")
require_relative("../drink")

class PubTest < MiniTest::Test
  def setup()
    @pub = Pub.new("Friendly Arm Inn",1000,[])
    @drink = Drink.new("Vodka",10)
    @drink2 = Drink.new("Free Grog",0)
  end

  def test_get_name
    assert_equal("Friendly Arm Inn", @pub.name)
  end

  def test_get_till_amount
    assert_equal(1000, @pub.till)
  end

  def test_increase_till_amount()
    assert_equal(1500, @pub.increase_till_amount(500))
  end

  def test_add_drink
    @pub.add_drinks(@drink)
    @pub.add_drinks(@drink2)
    assert_equal(2, @pub.drinks.length)
  end

end
