# Your code goes here

#a MBTA hash with keys as symbols of lines and values as arrays of stops
MBTA = {
	red_line: [south_station, park_st, kendall, central, harvard, porter, davis, alewife]
	green_line: [haymarket_green, government_center, park_st, bolyston, arlington, copley]
	orange_line: [north_station, haymarket, park_st, state, downtown_crossing, chinatown, back_bay, forest_hills]
}

#user input: 4 items- home and destination, direction traveling?
puts "Welcome to the MBTA! Where are you going?"
destination = gets.chomp
puts "What line is that on?"
destination_line = gets.chomp.to_sym
puts "What station are you starting from?"
home = gets.chomp
puts "And which line is that on?"
home_line = gets.chomp.to_sym

#define function to calc distance
def calc_stops
	if home_line == destination_line
		return (home_line.index(destination) - home_line.index(home)).abs
		same_line_stops = 
	else
		first_leg= (MBTA[:home_line].index(home) - MBTA[:home_line].index("park_st")).abs
		second_leg = (MBTA[:destination_line].index("park_st") - MBTA[:destination_line].index(destination)).abs) 
	transfer_stops = first_leg.to_i + second_leg.to_i
	end
end

#output
if home_line == destination_line
	puts 
puts "You have #{transfer_stops} stops until your destination."
puts "You have #{first_leg} stops until your transfer at Park St, then #{second_leg} stops until your destination."


# if startline == endline
#     puts (startline.index(destination)-startline.index(location)).abs
# else
#     puts "You have #{(subway[:startline].index(location) - subway[:startline].index("unionsquare")).abs} stops until transfer"
#     puts "After you have #{(subway[:endline].index(destination) - subway[:endline]index("unionsquare")).abs} until your destination"    
# end    