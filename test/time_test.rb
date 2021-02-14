

def compare

  puts "feedback message #{color_count} is correct colors and #{position_count} is correct positions."


  def color_counter
    color_count = user(guess).find_all do |guess|
     com_actual == guess
    end
    color_count = user(guess).find_all {|guess| com_actual == guess}
  end

  # def color_counter
  #   color_count = []
  # user(guess).each do |guess|
  #   if comp_actual == guess.include?
  #   color_count << color_count.to_i
  #   end
  #   color_count
  # end
  #
  def position_counter
    position_count = []
  user(guess).each do |guess|
     [com_actual] == guess.index
    position_count << position_count.to_i
    end
    position_count
  end

  def position_counter
    user_guess = @user_guess #scope issue????
    matches = user_guess.map do |position|
      user_guess == com_actual
  end


def


end

user(guess) = [y, y, y, y]
com_actual = [r, b, g, y]

  try again

  ###be told when they have succeeded  MESS



  enumerable style method
  each?
  map?
  input class?
