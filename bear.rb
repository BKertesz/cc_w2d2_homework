class Bear
  attr_reader :stomach
  def initialize(name)
    @name = name
    @stomach = []
  end

  def eat_a_fish(fish)
    return @stomach << fish
  end

  def is_starving()
    return true if @stomach == []
    return false
  end

  def hunt_for_fish(river)
    food = river.fishes.pop
    return @stomach << food
  end

  def hunt_for_many_fish(river,amount)
    food_array = river.fishes.shift(amount)
    return @stomach.concat(food_array)
  end

  def digest()
    return @stomach = []
  end
end
