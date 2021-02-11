class Peg
  attr_reader :color,
              :position

  def initialize(color, position)
    @color = color #r or R has to work(gets.chomp.downcase)
    @position = position
  end

  # instert shuffled [] somewhere in here
end
