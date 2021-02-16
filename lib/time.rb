class Time

def start
  start = Time.now
end

def ending
  ending = Time.now
end

def time_taken
  time_taken = ending - start
end

def minutes
  minutes = time_taken/60
end

def seconds
  seconds = time_taken % 60
end

def total_time
  "#{minutes} minutes and #{seconds} seconds."
end 
