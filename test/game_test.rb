require 'minitest/autorun'
require 'minitest/pride'
require './lib/game.rb'


class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_is_has_a_secret_code
    game = Game.new
    expected = game.compcode
    assert_equal expected, game.compcode
  end

  def test_can_cheat
    game = Game.new
    expected = @compcode
    assert_equal expected, game.cheat
  end
end
