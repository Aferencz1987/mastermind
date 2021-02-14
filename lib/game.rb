
class Game
  attr_reader :code_options,
              :compcode
  def initialize
    @code_options = ['r', 'b', 'g', 'y']
    @compcode = @code_options.shuffle
  end

  def cheat
    print @compcode
  end

end
