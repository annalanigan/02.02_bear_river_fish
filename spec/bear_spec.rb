require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Edward")
  end

  def test_bear_name
    assert_equal("Edward", @bear.name)
  end

  def test_empty_tummy
    assert_equal(0, @bear.tummy.length)
  end

end
