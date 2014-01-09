# Your code goes here

### Input function
def prompt_input(prompt, options) #prompt = String
  puts "----------------------------------"
  puts prompt
  puts "----------------------------------"
  puts options
  gets.chomp
end

# Return lines and stops
def return_lines
  # Set up the three lines as array values to the hash lines
  lines = {
    :red_line => ['south station', 'park st', 'kendall', 'central', 'harvard', 'porter', 'davis', 'alewife'],
    :green_line => ['haymarket', 'government center', 'park st', 'bolyston', 'arlington', 'copley'],
    :orange_line => ['north station', 'haymarket', 'park st', 'state', 'downtown crossing', 'chinatown', 'back bay', 'forest hills']
  }
end

### Calculate function
# Parameters: start_line, start_stop, end_line, end_stop
def calculate_stops(start_line, start_stop, end_line, end_stop)
  lines = return_lines
  # create symbols for lines
  start = start_line.to_sym
  stop = end_line.to_sym
  if start_line == end_line
    return (lines[start].index(start_stop) - lines[stop].index(end_stop)).abs
  else
    to_park = (lines[start].index(start_stop) - lines[start].index("park st")).abs
    from_park = (lines[stop].index("park st") - lines[stop].index(end_stop)).abs
    return to_park + from_park
  end
end


## should output 2
# puts calculate_stops("red_line", "south station", "red_line", "kendall")

# # should output 3
# puts calculate_stops("red_line", "south station", "green_line", "haymarket")

## Output function
def yield_output(output)
  puts "This trip will take #{output} stops."
end

### Call function
def run_calculate_stops
  # get the lines and stops
  lines = return_lines #this is a hash fyi
  # get an array of just the lines / keys
  just_lines = lines.keys
  # First get user input
  start_line = prompt_input("Which line do you want to take?", just_lines)
  start_stop = prompt_input("And at what station?", lines[start_line.to_sym])
  end_line = prompt_input("Which line are you going to end at?", just_lines)
  end_stop = prompt_input("And the station?", lines[end_line.to_sym])

  # Pass input data to calculate_stops
  output = calculate_stops(start_line, start_stop, end_line, end_stop)

  # Pass output back to user
  yield_output(output)
end

### Call run_calculate_stops
run_calculate_stops
