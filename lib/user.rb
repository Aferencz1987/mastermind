class User
  attr_reader :user
  def initialize(user)
    @user = user

  end

  def length_error?
    if @user.length == 4
      false
    else
      true
    end
    # if @user.count > 4 || @user.count < 4
    #   @erroneous_length = true
    # end
  end



end
