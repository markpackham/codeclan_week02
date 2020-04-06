require("minitest/autorun")
require("minitest/reporters")
require_relative("../bank_account")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test
  def setup
    @bank_account = BankAccount.new("Nathan", 1000, "business")
  end

  def test_get_holder_name
    assert_equal("Nathan", @bank_account.holder_name)
  end

  def test_get_balance
    assert_equal(1000, @bank_account.balance)
  end

  def test_get_type
    assert_equal("business", @bank_account.type)
  end

  def test_set_account_name
    @bank_account.set_holder_name("Eugene")
    assert_equal("Eugene", @bank_account.holder_name)
  end

  def test_set_balance
    @bank_account.set_balance(3000)
    assert_equal(3000, @bank_account.balance)
  end

  def test_set_type
    @bank_account.set_type("personal")
    assert_equal("personal", @bank_account.type)
  end
end