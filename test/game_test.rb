require 'minitest/autorun'
require 'minitest/pride'
# require './lib/messages.rb'
require './lib/game.rb'


class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new
    assert_instance_of Game, game
  end

  # def test_is_has_a_secret_code
  #   game = Game.new
  #   expected = game.compcode
  #   assert_equal expected, game.compcode
  # end

  def test_can_cheat
    skip
    game = Game.new
    expected = @compcode
    assert_equal expected, game.cheat
  end

  def test_counts_color_matches
    game = Game.new
    game.guesses  = ["bbyy"]
    game.compcode = ["bbyy"]

    assert_equal 2, game.color_counter
  end

  # def test_counts_position_matches
  #   skip
  #   game = Game.new
  #   assert_equal 3, game.position_counter
  # end

end
