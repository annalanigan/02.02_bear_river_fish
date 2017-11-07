require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestBear < MiniTest::Test

  def setup
    @fish1 = Fish.new("trout")
    @fish2 = Fish.new("salmon")
    @fish3 = Fish.new("lampreys")
    @river = River.new("Tweed")
    @bear = Bear.new("Edward")
  end

  def test_bear_name
    assert_equal("Edward", @bear.name)
  end

  def test_empty_tummy
    assert_equal(0, @bear.tummy.length)
  end
  ## leaving this a .length while river is .count to see if thereis any impact on results.

  def test_feed_bear
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    @bear.feed_bear(@river, @fish1)
    @bear.feed_bear(@river, @fish2)
    assert_equal(2, @bear.tummy.length)
    assert_equal(1, @river.fish_in_river.count)
  end

end
