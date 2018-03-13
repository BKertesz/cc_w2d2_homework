require "minitest/autorun"
require_relative "../bear"
require_relative "../river"
require_relative "../fish"


class BearTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @river = River.new("Amazon",[@fish1,@fish2])
    @bear = Bear.new("Yogi")
  end

  def test_eat_a_fish
    @bear.eat_a_fish(@fish1)
    assert_equal(1,@bear.stomach.length)
  end

  def test_is_starving
    assert_equal(true,@bear.is_starving)
  end

  def test_hunt_for_fish
    @bear.hunt_for_fish(@river)
    assert_equal(false,@bear.is_starving)
  end

  def test_hunt_for_many_fish
    @river.a_fish_is_born("Squid")
    @river.a_fish_is_born("Salmon")
    @bear.hunt_for_many_fish(@river,3)
    assert_equal(3,@bear.stomach.length)
  end

  def test_digest
    @bear.digest()
    assert_equal(true,@bear.is_starving)
  end
end
