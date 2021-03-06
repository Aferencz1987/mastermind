require './lib/messages'

class Game
  attr_accessor :compcode,
                :answer

  def initialize
    @compcode = generate_code(4)
    @answer = ""
    @message = Messages.new
    @turn_number = 0
    @start_time = Time.now
    @ending_time  = Time.now
  end

  def generate_code(number)
    library = ["r", "g", "b", "y"]
    Array.new(number) {library.sample}
  end

  def color_counter
    color_count = []
    4.times do |guess|
      if @answer[guess] == @compcode[guess]
        color_count << 1
      end
    end
    color_count.sum
  end

  def start
    puts @message.welcome
    @message.printz
    input
    if @answer == "p"
      game_loop
    elsif @answer == "i"
      puts @message.instructions
      @message.printz
      input
      if @answer == "p"
        game_loop
      elsif @answer == "q"
        @message.quit
      else
        puts "We quit the game for you since you didn't choose correctly"
      end
    elsif @answer == "q"
      puts @message.quit
    else
      puts "naughty naughty"
    end
  end

  def game_loop
    @start_time = Time.now
    @compcode = generate_code(4)
    p @message.play
    @message.printz
    until end_game_conditions
      @turn_number += 1
      input
      length_error?
      cheat_message if cheat
      puts feedback if !cheat
      @message.printz
        if @answer == @compcode.join
          @ending_time = Time.now
          winner_message
          @message.printz
          input
          if @answer == "p"
            game_loop
          elsif quits?
            @message.quit
            @message.printz
            break
          end
        end
      end
  end

  def cheat
    @answer == "c" || @answer == "cheat"
  end

  def cheat_message
    puts "Really?! Fine. It's #{@compcode.join.upcase}. Your smarter than this. Just kidding. We both know it's 'you're.'"
  end

  def quits?
    @answer == "q" || @answer == "quit" || @answer == "Q"
  end

  def end_game_conditions
    @answer == @compcode.join || quits? || @turn_number == 100
  end

  def win_time_loop
    if @answer == @compcode.join
      puts @message.winner_message
    end
  end

  def input
    @answer = gets.chomp.downcase
  end

  def feedback
    "#{@answer.upcase} has #{color_counter} correct. You've taken #{@turn_number} guesses. Pick a new combination of (r)ed, (y)ellow, (g)reen, or (b)lue. The length needs to be four elements long."
  end

  def length_error?
    if @answer.length != 4 && !cheat
       @message.error_message
    end
  end

  def winner_message
    puts "Congratulations! You guessed the sequence #{compcode.join.upcase} in 1 guess over #{total_time}.

    Do you want to (p)lay again or (q)uit?"
  end

  def total_time
    time_taken = @ending_time - @start_time
    minutes = time_taken / 60
    seconds = time_taken % 60
    "#{minutes.to_i} minutes and #{seconds.to_i} seconds."
  end
end
