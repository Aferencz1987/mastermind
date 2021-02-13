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
    expected = true

    assert_equal expected, game.secret_code
  end
end
