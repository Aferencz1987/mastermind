
class Game
  attr_accessor :compcode,
                :guesses



  def initialize
    @compcode = compcode
    @guesses = guesses
  end

  def color_counter
    color_count = []
    4.times do |guess|
      if @guesses[guess] == @compcode[guess]
        color_count << 1
      end
    end
    color_count.sum
  end


  # def position_counter
  #   position_count = []
  #   4.times do |index|
  #     if @guesses[index] == @compcode[index]
  #       position_count << 1
  #     end
  #   end
  # end
  # position_count.sum
end
