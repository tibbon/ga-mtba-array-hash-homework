# define each subway line as an array of stations

red_line_array = ["alewife", "davis", "porter", "harvard", "central", "kendall", "park st", "south station"]
orange_line_array = ["north station", "haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
green_line_array = ["haymarket", "gov't center", "park st", "boylston", "arlington", "copley"]

# define the subway as a hash, with key = line and value = array of stations on the line
# this ended up unnecessary - i just used the arrays

the_subway = {red_line: red_line_array, orange_line: orange_line_array, green_line: green_line_array}

# get user input for the start line and return start line array
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

# get user input for start station, return station name
def input_start_station(red_line_array, orange_line_array, green_line_array)
	puts "What station are you starting at?\n(red line: #{red_line_array.join(", ")})\n(orange line: #{orange_line_array.join(", ")})\n(green line: #{green_line_array.join(", ")})"
	gets.chomp
end

# get user input for end line, return end line array
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

# calculate number of stop on the trip
def calculate_number_of_stops(start_line_array, end_line_array, start_station, end_station)

	# if the journey is on a single line
	if start_line_array == end_line_array
		(end_line_array.index(end_station) - start_line_array.index(start_station)).abs
	# if the journey is on two lines, transfer at park st
	else
		stops_before_transfer = (start_line_array.index("park st") - start_line_array.index(start_station)).abs
		stops_after_transfer = (end_line_array.index("park st") - end_line_array.index(end_station)).abs
		stops_before_transfer + stops_after_transfer
	end
end

# assign user input to variables

start_line_array = input_start_line(red_line_array, orange_line_array, green_line_array)

start_station = input_start_station(red_line_array, orange_line_array, green_line_array)

end_line_array = input_end_line(red_line_array, orange_line_array, green_line_array)

end_station = input_end_station(red_line_array, orange_line_array, green_line_array)


# perform the calculation and print result

number_of_stops = calculate_number_of_stops(start_line_array, end_line_array, start_station, end_station)

puts "The number of stops is #{number_of_stops}"

