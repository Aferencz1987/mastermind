require 'minitest/autorun'
require 'minitest/pride'
require './lib/peg.rb'
require './lib/turn.rb'

class TurnTest < Minitest::Test

  def test_it_exists
    turn = Turn.new
    assert_instance_of Turn, turn
  end
end
