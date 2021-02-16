require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/user'
# require './lib/messages.rb'

class UserTest < Minitest::Test

  def test_it_exists
    skip
    user = User.new

    assert_instance_of User, user
  end
end
