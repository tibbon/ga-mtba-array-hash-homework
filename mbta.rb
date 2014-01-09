# define each subway line as an array of stations

red_line_array = ["alewife", "davis", "porter", "harvard", "central", "kendall", "park st", "south station"]
orange_line_array = ["north station", "haymarket", "park st", "downtown crossing", "chinatown", "back bay", "forest hills"]
green_line_array = ["haymarket", "gov't center", "park st", "boylston", "arlington", "copley"]

# define the subway as a hash, with key = line and value = array of stations on the line

the_subway = {red_line: red_line_array, orange_line: orange_line_array, green_line: green_line_array}

# get user input for the start line
def input_start_line
	puts "What line are you starting on? (red, orange, green)"
	gets.chomp
end

# get user input for start station
def input_start_station
	puts "What station are you starting at?\n(red line: #{red_line_array.join(", ")})\n(orange line: #{orange_line_array.join(", ")})\n(green line: #{green_line_array.join(", ")})"
	gets.chomp
end

# get user input for end line
def input_end_line
	puts "What line are you going to? (red, orange, green)"
	gets.chomp
end

# get user input for end station
def input_end_station
	puts "What station are you getting off at?\n(red line: #{red_line_array.join(", ")})\n(orange line: #{orange_line_array.join(", ")})\n(green line: #{green_line_array.join(", ")})"
	gets.chomp
end

# assign user input to variables
start_line = input_start_line
start_station = input_start_station
end_line = input_end_station
end_station = input_end_station

# GOAL: PRINT TOTAL NUMBER OF STOPS FOR EACH TRIP

=begin

general idea:
if start_line and end_line are the same
	then calculate (position of end_station - position of start_station)
else
	find the position of park st
	calculate (position of park st - position of start_station)
	calculate (position of park st - position of end_station)
	add them together
	maybe subtract 1?
end

=end

puts start_line.index("start_station")



# rewrite whole subway as 6 joined lines (e.g. red to green one way, red to green the other way, etc.)?
