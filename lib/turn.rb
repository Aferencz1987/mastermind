class Turn

  def initialize

  end

  def main_game
    puts "hey bud, type in some stuff"
    print "> "
    user = gets.chomp
    computer = ["r", "b", "g", "y"]

      if
        user[0] == computer[0] && user[1] == computer[1] && user[2] == computer[2] && user[3] == computer[3]
        puts "Congratulations! You guessed the sequence '#{computer}' in 8 guesses over #{time}.
              Do you want to (p)lay again or (q)uit?"
      else
        puts "nope, try again"
      end


end
