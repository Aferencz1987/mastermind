class Turn

  def initialize
    @user = user
  end

  def length_error?
    if @user.length == 4
      false
    else
      true
      puts message.error_message
    end
  end

end



@compcode
