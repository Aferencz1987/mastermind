class Turn

  def initialize
    @computer = []
  end

  def length_error?
    if input.count > 4 || input.count < 4
      puts error_message.messages
    else
      true
    end
  end

end




  # def challenge
  #   computer.shuffle!
  # end
  #
  # def main_game
  #   puts "hey bud, type in some stuff"
  #   print "> "
  #   user = gets.chomp
  #   computer = ["r", "b", "g", "y"]
  #
  #     if
  #       user[0] == computer[0] && user[1] == computer[1] && user[2] == computer[2] && user[3] == computer[3]
  #       puts "Congratulations! You guessed the sequence '#{computer}' in 8 guesses over #{time}.
  #             Do you want to (p)lay again or (q)uit?"
  #     else
  #       puts "nope, try again"
  #     end


#Should be able to have quit method at any point
