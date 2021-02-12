puts "Welcome to MASTERMIND

I have generated a beginner sequence with four elements made up of: (r)ed,
(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
What's your guess?"

print "> "
start = $stdin.gets.chomp

if start == "p"
  puts "Okay, let's DO THIS!"

  print "> "
  play = $stdin.gets.chomp

elsif start == "i"
  puts "Watch the youtube video, yo."

  print "> "
  instructions = $stdin.gets.chomp

else start == "q" 
  puts "Well, fine then.  We didn't want to play with you either."
end
