class Messages
  attr_reader :beginning_message,
              :instruct,
              :error


  def initialize
    @beginning_message = beginning_message
    @instruct = instruct
    @error = error
  end

  def welcome
    @beginning_message = puts "Welcome to MASTERMIND

    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

    print "> "
    start = gets.chomp

    if start == "p"
      #This is where TURN lives
      #
      puts "Okay, let's DO THIS!"

      print "> "
      play = gets.chomp

    elsif start == "i"
      puts "Watch the youtube video, yo."

      print "> "
      instructions = gets.chomp

    else start == "q"
      puts "Well, fine then.  We didn't want to play with you either."
    end
  end

  def instructions
    @instruct = puts "The object of MASTERMIND is to guess a secret code created by the computer consisting of a series of 4 colors.
You may choose any combination of (r)ed, (y)ellow, (g)reen, or (b)lue.
You may have any color repeat as many times as you’d like until a series of 4 is reached.
You will be provided feedback per attempt. Feedback will look as follows:

  “'RRGB' has 3 of the correct colors with 2 in the correct positions You've taken 1 guess”

You may press ‘q’ for quit at any time. Happy guessing!"
  end

  def error_message
    @error = puts "Hey friend, I noticed you have the wrong amount of elements. Try putting a total of 4 in."
  end
end

message = Messages.new
# message.welcome
# message.instructions
message.error_message

#Have a method called begin or start have it generate code and print out welcome message.



#We need have the code generator method here.
