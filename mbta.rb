# Your code goes here

#MBTA hash with keys as symbols of lines and values as arrays of stops
MBTA = {
	red_line: ["south_station", "park_st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
	green_line: ["haymarket_green", "government_center", "park_st", "boylston", "arlington", "copley"],
	orange_line: ["north_station", "haymarket", "park_st", "state", "downtown_crossing", "chinatown", "back_bay", "forest_hills"]
}

puts "Welcome to the MBTA! Where are you going?"
destination = gets.chomp
puts "What line is that on?"
destination_line = gets.chomp
puts "What station are you starting from?"
home = gets.chomp
puts "And which line is that on?"
home_line = gets.chomp

def same_line(home_line, home, destination_line, destination)
		return home_index = MBTA[home_line.to_sym].index(home).to_i
		return destination_index = MBTA[destination_line.to_sym].index(destination).to_i
		return (home_index - destination_index).abs
end


def diff_lines(home_line, home, destination_line, destination)
	return distance_one = MBTA[home_line.to_sym].index(home).to_i
	return distance_two = MBTA[destination_line.to_sym].index(destination).to_i

	return home_mid_point = MBTA[home_line.to_sym].index("park_st").to_i
	return destination_mid_point = MBTA[home_line.to_sym].index("park_street").to_i

	return first_leg = (distance_one - home_mid_point).abs.to_i
	return second_leg = (distance_two - destination_mid_point).abs.to_i
end

if home_line == destination_line
	puts "You have #{same_line(home_line, home, destination_line, destination)} stops until your destination."
else
	puts "You have #{diff_lines(home_line, home, destination_line, destination)} stops until your destination."
end


# number_of_stops = calc_stops

# 	puts "You have #{number_of_stops} stops until your destination."

# if startline == endline
#     puts (startline.index(destination)-startline.index(location)).abs
# else
#     puts "You have #{(subway[:startline].index(location) - subway[:startline].index("unionsquare")).abs} stops until transfer"
#     puts "After you have #{(subway[:endline].index(destination) - subway[:endline]index("unionsquare")).abs} until your destination"    
# end    