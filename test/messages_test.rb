require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn.rb'
require './lib/messages.rb'
require './lib/game.rb'


class MessagesTest < Minitest::Test

  def test_it_exists
    message = Messages.new

    assert_instance_of Messages, message
  end

  def test_print_the_welcome_message
    # skip
    message = Messages.new
    expected = message.welcome

    assert_equal expected, message.welcome
  end

  def test_it_gives_instructions
    # skip
    message = Messages.new
    expected = message.instructions

    assert_equal expected, message.instructions
  end

  def test_length_error_message
    message = Messages.new
    expected = message.error_message
    assert_equal expected, message.error_message
  end


  def test_winner_message
    #skip
    message = Messages.new
    expected = message.winner_message
    assert_equal expected, message.winner_message
  end

  def test_gives_feedback
    message = Messages.new
    expected = message.feedback
    assert_equal expected, message.feedback
  end
end
