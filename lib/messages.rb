puts "Welcome to MASTERMIND

Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

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

else start == "q" # Print out CSV?
  puts "Well, fine then.  We didn't want to play with you either."
end
