require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub")

class PubTest < MiniTest::Test
  def setup()
    @pub = Pub.new("Friendly Arm Inn")
  end

  def test_get_name
    assert_equal("Friendly Arm Inn", @pub.name)
  end
end
