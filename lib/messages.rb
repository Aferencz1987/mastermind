class Messages
  attr_reader :beginning_message,
              :play,
              :instruct,
              :quit,
              :error,
              :winner_message,
              # :feedback


  def initialize
    @beginning_message = beginning_message
    @play = play
    @instruct = instruct
    @quit = quit
    @error = error
    @winner_message = winner_message
    # @feedback = feedback
  end

  def welcome

    @beginning_message = puts "Welcome to MASTERMIND

    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    print "> "
    user_choice = gets.chomp

    if user_choice == "p"
      puts play
      print "> "
      win_choice = gets.chomp

      if win_choice == "rbyg"
        puts winner_message
        print "> "
        play_again_choice = gets.chomp

        if play_again_choice == "p"
          puts play
          print "> "
          user_choice = gets.chomp
        end
      end

    elsif user_choice == "i"
      puts instructions
      print "> "
      user_choice = gets.chomp

      if user_choice == "p"
        puts play
        print "> "
        user_choice = gets.chomp
      end

    else user_choice == "q"
      puts quit
    end
  end

  def play
    @play = puts "Okay, pick a combination of (r)ed, (y)ellow, (g)reen, or (b)lue. The length needs to be four colors long."
  end

  def instructions
    @instruct = puts "The object of MASTERMIND is to guess a secret code created by the computer consisting of a series of 4 colors.
You may choose any combination of (r)ed, (y)ellow, (g)reen, or (b)lue.
You may have any color repeat as many times as you’d like until a series of 4 is reached.
You will be provided feedback per attempt. Feedback will look as follows:

  “'RRGB' has 3 of the correct colors with 2 in the correct positions You've taken 1 guess”

You may press (p) to play, you can press (q) to quit at any time."
  end

  def quit
    @quit = puts "Well, fine then.  We didn't want to play with you either."
  end


  def error_message
    @error = puts "Hey friend, I noticed you have the wrong amount of elements. Try putting a total of 4 in."
  end

  def winner_message
    @winner_message = puts "Congratulations! You guessed the sequence {'rbyg'} in 1 guess over {time}.

    Do you want to (p)lay again or (q)uit?"
  end




  # def feedback
  #   @feedback = puts "{user_guess} has {amount} of the correct elements with {wrong_amount} in the correct positions
  #   You've taken {num_of_guess} guess."
  # end
end

message = Messages.new
message.welcome
# # message.instructions
# message.error_message



  #
  # elsif play == wrong_guess
  #   puts feedback_message
  #
  #   print "> "
  #   guess_again == gets.chomp

  # elsif play == length_error
  #   puts error_message
  #
  #   print "> "
  #   guess_again == gets.chomp



#Have a method called begin or start have it generate code and print out welcome message.



#We need have the code generator method here.
