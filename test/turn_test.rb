require 'minitest/autorun'
require 'minitest/pride'
require './lib/messages.rb'
require './lib/turn.rb'
require './lib/game.rb'
require './lib/user.rb'

class TurnTest < Minitest::Test
  def test_it_exists
    turn = Turn.new
    assert_instance_of Turn, turn
  end

  def test_length_error
    user = User.new
    turn = Turn.new
    message = Messages.new
    turn.game.guesses = ("rgy")
    # result = turn.message.error_message
    assert_equal message.error_message, turn.length_error?
  end

  # def test_length_error
  #   turn = Turn.new
  #   user = User.new
  #   expected = true
  #   assert_equal expected, turn.length_error?
  # end
end


  # def test_it_is_not_the_same
  #   turn = Turn.new
  #   computer = ["r", "b", "g", "y"]
  #
  #   refute ["r", "b", "g", "y"], turn.challenge
