
class Game
  attr_reader :code_options,
              :compcode,
              :guesses
  def initialize
    @code_options = ["rbyg"]
    @compcode = ["r", "b", "b", "b"]#don't forget to CHANGE ME BACK, bitch
    @guesses = ["r", "b", "b", "y"]#guesses.split
  end


  def color_counter
    color_count = []
    4.times do |index|
      if @guesses[index] == @compcode[index]
        color_count << 1
      end
    end
    color_count.sum
  end

# Do we still need this?  I feel like we do.
  def position_counter
    position_count = []
    4.times do |index|
      if @guesses[index] == @compcode[index]
        position_count << 1
      end
    end
    position_count.sum
  end
end
