class Peg
  attr_reader :color,
              :position

  def initialize(color, position)
    @color = color #r or R has to work
    @position = position
  end
end
