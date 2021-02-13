require 'minitest/autorun'
require 'minitest/pride'
require './lib/message.rb'
require './lib/turn.rb'

class TurnTest < Minitest::Test

  def test_it_exists
    turn = Turn.new
    assert_instance_of Turn, turn
  end

  def test_length_error
    message = Messages.new
    
    expected = true
    assert_equal expected, turn.error_message
  end
end


  # def test_it_is_not_the_same
  #   turn = Turn.new
  #   computer = ["r", "b", "g", "y"]
  #
  #   refute ["r", "b", "g", "y"], turn.challenge
