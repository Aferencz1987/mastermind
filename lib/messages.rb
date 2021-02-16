class Messages
  def initialize

  end

  def welcome
    "Welcome to MASTERMIND

    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def printz
    print "> "
  end
    # user_choice = gets.chomp
    #
    # if user_choice == "p"
    #   puts play
    #   print "> "
    #   user_choice = gets.chomp
    #
    # elsif user_choice == "i"
    #   puts instructions
    #   print "> "
    #   user_choice = gets.chomp
    #
    #   if user_choice == "p"
    #     puts play
    #     print "> "
    #     user_choice = gets.chomp
    #   else user_choice == "q"
    #     puts quit
    #   end
    #
    # else user_choice == "q"
    #     puts quit
    # end


  def play
    puts "Alrighty, pick a combination of (r)ed, (y)ellow, (g)reen, or (b)lue. The length needs to be four elements long."
  end

  def instructions
    puts "The object of MASTERMIND is to guess a secret code created by the computer consisting of a series of 4 colors.  Guess any combination of (r)ed, (y)ellow, (g)reen, or (b)lue.  You may have any color repeat as many times as you’d like until a series of 4 is reached.  You will be provided feedback per attempt. Feedback will look as follows:

  “'RRGB' has 3 of the correct colors with 2 in the correct positions You've taken 1 guess”

You may press (p) to play, you can press (q) to quit at any time."
  end

  def quit
    puts "Well, fine then.  We didn't want to play with you either."
  end


  def error_message
    puts "Hey friend, I noticed you have the wrong amount of elements. Please put in a total of 4 instead."
  end

  def winner_message
    puts "Congratulations! You guessed the sequence #{@compcode} in 1 guess over #{total_time}.

    Do you want to (p)lay again or (q)uit?"
  end

end

message = Messages.new
message.welcome
