require 'pry'

# hash of mbta lines as keys, values are arrays of that line's stops
mbta = { 
	red: ["south_station", "park_st", "kendall", "central", "harvard", "porter", "davis", "alewife"], 
	orange: ["north_station", "haymarket_orange", "park_st", "state", "downtown_crossing", "chinatown", "back_bay", "forest_hills"], 
	green: ["haymarket_green", "government_center", "park_st", "bolyston", "arlington", "copley"] 
	}

# method for trips along the same line. simplest calculation
def one_line_trip(mbta_hash, start_line, end_line, start_stop, end_stop)
	first_leg_dist =mbta_hash[start_line.to_sym].index(start_stop).to_i
	second_leg_dist =mbta_hash[end_line.to_sym].index(end_stop).to_i
	return (second_leg_dist - first_leg_dist).abs
end

# method for trips along two lines. calculation pivots around park's index position in stop array
def two_line_trip(mbta_hash, start_line, end_line, start_stop, end_stop)
	first_leg = mbta_hash[start_line.to_sym].index(start_stop).to_i
	first_to_park = mbta_hash[start_line.to_sym].index('park_st').to_i
	second_leg = mbta_hash[end_line.to_sym].index(end_stop).to_i
	second_to_park = mbta_hash[end_line.to_sym].index('park_st').to_i
	first_dist = (first_leg - first_to_park).abs
	second_dist = (second_leg - second_to_park).abs
	return second_dist + first_dist
end

# set of prompts to set variables. assuming perfect user input except caps
puts "What line are you starting on?"
start_line = gets.chomp.downcase

puts "What stop are you getting on at?"
start_stop = gets.chomp.downcase

puts "what line are you ending on?"
end_line = gets.chomp.downcase

puts "What stop are you getting off at?"
end_stop = gets.chomp.downcase

# program calling methods depending on input to variables. passing in hash of mbta lines and stops both times
if start_line == end_line
	trip_stops = one_line_trip(mbta, start_line, end_line, start_stop, end_stop)
	p "Start at #{start_stop}, get off after #{trip_stops} stops at #{end_stop}. "
else 
	trip_stops = two_line_trip(mbta, start_line, end_line, start_stop, end_stop)
	p "Start at #{start_stop} on the #{start_line} line. Transfer to the #{end_line} line at park st. station. Ride until #{end_stop} station. Your trip requires #{trip_stops} total stops."
end

# binding.pry
	