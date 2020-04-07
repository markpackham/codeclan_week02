require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../customer")
require_relative("../pet")

class CustomerTest < MiniTest::Test
  def setup
    @new_pet = Pet.new("Blue", :cat, "British Shorthair", 500)
    @customer = Customer.new("Jack Jarvis",1000)
  end

  def test_customer_has_name()
    assert_equal("Jack Jarvis", @customer.name)
  end

  def test_customer_has_cash()
    assert_equal(1000, @customer.cash)
  end
end
