class Bear

  attr_reader :name
  attr_accessor :tummy

  def initialize(name)
    @name = name
    @tummy = []
  end

  def feed_bear(river, fish_food)
    new_fish_in_river = []
    for fish in river.fish_in_river
        @tummy << fish if fish == fish_food
        new_fish_in_river << fish if fish != fish_food
    end
    river.fish_in_river = new_fish_in_river
  end

  

end
