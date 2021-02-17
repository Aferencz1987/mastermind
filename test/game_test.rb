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
    expected = Array
    assert_instance_of expected, game.compcode
  end

  def test_counts_color_matches
    skip
    game = Game.new
    game.answer  = "ybgb"
    game.compcode = "rbyg"

    assert_equal 1, game.color_counter
  end

  def test_can_cheat
    skip
    game = Game.new
    expected = @compcode
    assert_equal expected, game.cheat_message
  end

  def test_it_can_start
    skip
    game = Game.new
    message = Messages.new
    expected = message.printz
    assert_equal expected, game.start
  end

  def test_game_play
    skip
    game = Game.new
    expected = @start_time
    assert_equal expected, game.game_loop
  end

  def test_it_quits
    skip
    game = Game.new
    assert_equal false, game.quits?
  end

  def test_length_error
    game = Game.new
    message = Messages.new
    @answer = 5
    assert_equal message.error_message, game.length_error?
  end




end
