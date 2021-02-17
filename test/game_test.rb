require 'minitest/autorun'
require 'minitest/pride'
require './lib/messages'
require './lib/game'


class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_is_has_a_secret_code #WE NEED TO MAKE THIS WORK
    skip
    game = Game.new
    expected = game.compcode
    assert_equal expected, game.generate_code(4)
  end

  def test_counts_color_matches
    # skip
    game = Game.new
    game.answer  = "ybgb"
    game.compcode = "rbyg"

    assert_equal 1, game.color_counter
  end

  def test_can_cheat
    skip
    game = Game.new
    expected = @compcode
    assert_equal expected, game.cheat
  end

  def test_it_can_start
    game = Game.new
    message = Messages.new
    expected = message.welcome
    require "pry"; binding.pry
    assert_equal expected, game.start
  end

end
