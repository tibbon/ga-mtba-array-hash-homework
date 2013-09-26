# Your code goes here
require 'pry'
#MBTA hash with keys as symbols of lines and values as arrays of stops
MBTA = {
	red_line: ["south_station", "park_st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
	green_line: ["haymarket_green", "government_center", "park_st", "boylston", "arlington", "copley"],
	orange_line: ["north_station", "haymarket", "park_st", "state", "downtown_crossing", "chinatown", "back_bay", "forest_hills"]
}

#user input: 4 items- home and destination, direction traveling?
puts "Welcome to the MBTA! Where are you going?"
destination = gets.chomp
puts "What line is that on?"
destination_line = gets.chomp
puts "What station are you starting from?"
home = gets.chomp
puts "And which line is that on?"
home_line = gets.chomp

#define function to calc distance

def calc_each_index(line, stop)
	MBTA[line.to_sym].index(stop)
end

def same_line(home_line, home, destination_line, destination)
		return (calc_index(home_line, home) - calc.index(destination_line, destination)).abs
end


def diff_lines(home_line, home, destination_line, destination)
	return ((calc_index(home_line, home) - calc_index(home_line, "park_st")).abs) + (calc_index(destination_line, "park_st") - (calc.index(destination_line, destination).abs)
end

if home_line == destination_line
	same_line(MBTA, home_line)

number_of_stops = calc_stops

	puts "You have #{number_of_stops} stops until your destination."

# if startline == endline
#     puts (startline.index(destination)-startline.index(location)).abs
# else
#     puts "You have #{(subway[:startline].index(location) - subway[:startline].index("unionsquare")).abs} stops until transfer"
#     puts "After you have #{(subway[:endline].index(destination) - subway[:endline]index("unionsquare")).abs} until your destination"    
# end    