class River
  attr_reader :fishes
  def initialize(name,fishes)
    @name = name
    @fishes = fishes || []
  end

  def fish_count()
    return @fishes.length
  end

  def a_fish_is_born(type)
    fish = Fish.new(type)
    @fishes << fish
  end
end
