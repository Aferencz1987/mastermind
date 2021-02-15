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


# what do we want our player to be able to do
#
#   type in a series  of 4 color choices
#
# if user types in "four colors" then computer compares it and then returns true or false
#   if false computer tells user, "feedback" and provides and option to try again.
#
# In order to create feedback, computer will need take in the user input and detect color and location in row(array? string?) if color is good => =1 to "color is good" count. then same element is checked for location detect location in row.
#
# each color has an number of how many times its in the array
# method keeps counting until it reaches that
#
# If both color and location are good, flag as success and !!keep track of both color and location!! move on to next item in row.
#
# If color is good but location is wrong, add to array called bad location
# if the color matches any of the computer generated "four colors" put in array of good color, bad spot.
#
#    Computers output 'ybry'
#
#   Unser's 1st guess 'byyy'     color count per color option x
#                               color + position success count
#                               guess count
#
#
#  If one is wrong, flag which, and move on to next. At the end tally both and let user know.




# EACH METHODS
# def color_counter
#   color_count = []
# user(guess).each do |guess|
#   if comp_actual == guess.include?
#   color_count << color_count.to_i
#   end
#   color_count
# end
#
# def position_counter
#   position_count = []
# user(guess).each do |guess|
#    [com_actual] == guess.index
#   position_count << position_count.to_i
#   end
#   position_count
# end


  # def color_counter
  #   color_count = @guesses.find_all do |guess|
  #     if @compcode == guess
  #       @compcode << guess.to_i
  #   end
  # end
  #
  # def position_counter
  #   matches = guesses.map do |guess|
  #     @compcode == guess
  #   end
  # end

# WIN OFF THE BAT METHOD
# def main_game
#     if
#       @guess[0] == @compcode[0] && @guess[1] == @compcode[1] && @guess[2] == @compcode[2] && @guess[3] == @compcode[3]
#       puts "Congratulations! You guessed the sequence '#{@compcode}' in 8 guesses over #{time}.
#             Do you want to (p)lay again or (q)uit?"
#     else
#       puts "nope, try again"
#   end
# end


# @code_options.shuffle
#   def cheat
#     print @compcode
#   end

#
# user(guess) = [y, y, y, y]
# com_actual = [r, b, g, y]
#
#   try again

###be told when they have succeeded  MESS





  ###receive feeback MESS
