GAME FLOW MESSAGE
"I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
What's your guess?"

  def quit
    start = gets.chomp
    if start == 'q'
      puts 'toodaloo motherfucker'
    end
  end
  def test_it_can_quit
    message = Messages.new
    expected = 'toodaloo motherfucker' # don't fucking forget this shit ###

    assert_equal expected, message.quit
  end


# class Peg
#   attr_reader :color,
#               :position
#
#   def initialize(color, position)
#     @color = color #r or R has to work(gets.chomp.downcase)
#     @position = position
#   end
#
#   # instert shuffled [] somewhere in here
# end
