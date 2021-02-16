class Turn
  attr_reader :user, :game, :message
  def initialize
    @user = user
    @game = Game.new
    @message = Messages.new
  end

  def length_error?
    if @game.guesses.length == 4
      false
    else
      true
       @message.error_message
    end
  end

end



#@compcode
