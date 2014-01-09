# define each subway line as an array of stations

red_line_array = ["alewife", "davis", "porter", "harvard", "central", "kendall", "park st", "south station"]
orange_line_array = ["north station", "haymarket", "park st", "downtown crossing", "chinatown", "back bay", "forest hills"]
green_line_array = ["haymarket", "gov't center", "park st", "boylston", "arlington", "copley"]

# define the subway as a hash, with key = line and value = array of stations on the line

the_subway = {red_line: red_line_array, orange_line: orange_line_array, green_line: green_line_array}

# get user input for the start line
def input_start_line(red_line_array, orange_line_array, green_line_array)
	puts "What line are you starting on? (red, orange, green)"
	input = gets.chomp

	# yes, i know i could put this in its own method, but in this case (hah!) i actually think leaving it is more readable
	case input
	when "red"
		red_line_array
	when "orange"
		orange_line_array
	when "green"
		green_line_array
	end
end

# get user input for start station
def input_start_station(red_line_array, orange_line_array, green_line_array)
	puts "What station are you starting at?\n(red line: #{red_line_array.join(", ")})\n(orange line: #{orange_line_array.join(", ")})\n(green line: #{green_line_array.join(", ")})"
	gets.chomp
end

# get user input for end line
def input_end_line(red_line_array, orange_line_array, green_line_array)
	puts "What line are you going to? (red, orange, green)"
	input = gets.chomp

	# more readable when not in a method
	case input
	when "red"
		red_line_array
	when "orange"
		orange_line_array
	when "green"
		green_line_array
	end

end

# get user input for end station
def input_end_station(red_line_array, orange_line_array, green_line_array)
	puts "What station are you getting off at?\n(red line: #{red_line_array.join(", ")})\n(orange line: #{orange_line_array.join(", ")})\n(green line: #{green_line_array.join(", ")})"
	gets.chomp
end


# assign user input to variables

start_line_array = input_start_line(red_line_array, orange_line_array, green_line_array)

start_station = input_start_station(red_line_array, orange_line_array, green_line_array)

end_line_array = input_end_line(red_line_array, orange_line_array, green_line_array)

end_station = input_end_station(red_line_array, orange_line_array, green_line_array)

# GOAL: PRINT TOTAL NUMBER OF STOPS FOR EACH TRIP

puts ""
puts "The start line is #{start_line_array}"
puts "The start station is #{start_station}"
puts "The array index of the start station is #{start_line_array.index(start_station)}"
puts ""
puts "The end line is #{end_line_array}"
puts "The end station is #{end_station}"
puts "The array index of the end station is #{end_line_array.index(end_station)}"
puts ""
puts "the aend!"
puts ""

def calculate_number_of_stops(start_line_array, end_line_array, start_station, end_station)

	if start_line_array == end_line_array
		(end_line_array.index(end_station) - start_line_array.index(start_station)).abs
	else
		"start and end lines not same"
	end

end

number_of_stops = calculate_number_of_stops(start_line_array, end_line_array, start_station, end_station)
puts number_of_stops




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





# rewrite whole subway as 6 joined lines (e.g. red to green one way, red to green the other way, etc.)?
