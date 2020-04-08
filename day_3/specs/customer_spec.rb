require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../customer")

class CustomerTest < MiniTest::Test
  def setup()
    @customer = Customer.new("Bob",50)
    @customer2 = Customer.new("Hobo",0)
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
end
