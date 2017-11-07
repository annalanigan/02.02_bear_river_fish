require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < MiniTest::Test

  def setup
    @fish1 = Fish.new("trout")
    @fish2 = Fish.new("salmon")
    @fish3 = Fish.new("lampreys")
    @river = River.new("Tweed")
  end

  def test_river_name
    assert_equal("Tweed", @river.river_name)
  end

  def test_fish_in_river
    assert_equal(0, @river.fish_in_river.count)
  end

  def test_add_fish_to_river
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    assert_equal(3, @river.fish_in_river.count)
  end

end
