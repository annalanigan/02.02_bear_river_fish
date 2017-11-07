class River

  attr_reader :river_name, :fish_in_river

  def initialize(river_name)
    @river_name = river_name
    @fish_in_river = []
  end

  def add_fish_to_river(fish)
    @fish_in_river << fish
  end

end
