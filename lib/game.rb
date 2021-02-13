class Game

end


def secret_code
  code_options = ['r', 'g', 'b', 'y']
  secret_code << code_options.shuffle
   p secret_code
end
