# Your code goes here

#MBTA hash with keys as symbols of lines and values as arrays of stops
MBTA = {
	red: ["south_station", "park_st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
	green: ["haymarket_green", "government_center", "park_st", "boylston", "arlington", "copley"],
	orange: ["north_station", "haymarket", "park_st", "state", "downtown_crossing", "chinatown", "back_bay", "forest_hills"]
}

puts "Welcome to the MBTA! Where are you going?"
destination = gets.chomp
puts "What line is that on?"
destination_line = gets.chomp.to_sym
puts "What station are you starting from?"
home = gets.chomp
puts "And which line is that on?"
home_line = gets.chomp.to_sym

def same_line(home_line, home, destination_line, destination)
	return home_index = MBTA[home_line].index(home).to_i
	return destination_index = MBTA[destination_line].index(destination).to_i
	return (home_index - destination_index).abs
end

def diff_lines(home_line, home, destination_line, destination)
	return home_index = MBTA[home_line].index(home).to_i
	return destination_index = MBTA[destination_line].index(destination).to_i

	return home_mid_point = MBTA[home_line].index("park_st").to_i
	return destination_mid_point = MBTA[destination_line].index("park_st").to_i

	return first_leg = (home_index - home_mid_point).abs.to_i
	return second_leg = (destination_index - destination_mid_point).abs.to_i
	return first_leg + second_leg
end

if home_line == destination_line
	puts "You have #{same_line(home_line, home, destination_line, destination)} stops until your destination."
else
	puts "You have #{diff_lines(home_line, home, destination_line, destination)} stops until your destination."
end