require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../customer")

class CustomerTest < MiniTest::Test
  def setup()
    @customer = Customer.new("Bob")
  end

  def test_get_name
    assert_equal("Bob", @customer.name)
  end
end
