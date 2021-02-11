require 'minitest/autorun'
require 'minitest/pride'
require './lib/peg.rb'

class PegTest < Minitest::Test

  def test_it_exists
    peg1 = Peg.new("red", "position 1")
    peg2 = Peg.new("blue", "position 2")
    peg3 = Peg.new("green", "position 3")
    peg4 = Peg.new("yellow", "position 4")
    assert_instance_of Peg, peg1
    assert_instance_of Peg, peg2
    assert_instance_of Peg, peg3
    assert_instance_of Peg, peg4
  end
end
