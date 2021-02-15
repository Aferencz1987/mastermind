require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn.rb'
require './lib/user.rb'
# require './lib/messages.rb'

class UserTest < Minitest::Test

  def test_it_exists
    skip
    user = User.new

    assert_instance_of User, user
  end
end
