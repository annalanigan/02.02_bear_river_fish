require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Tweed")
  end

  def test_river_name
    assert_equal("Tweed", @river.river_name)
  end

end
