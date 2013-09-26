mbta = {
"red" => ["South Station", "Park St.", "Kendall", "Central", "Harvard", "Porter", "Alewife"],
"green" => ["Haymarket", "Government Center", "Park St.", "Boylston", "Arlington", "Copley"],
"orange" => ["North Station", "Haymarket", "Park St.", "State Street", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
}

def calc_distance(mbta_hash, origin_line, destination_line, origin_stop, destination_stop)
	origin_line_hash = Hash[mbta_hash[origin_line].map.with_index.to_a]

	if origin_line != destination_line
		destination_line_hash = Hash[mbta_hash[destination_line].map.with_index.to_a]
		leg1 = (origin_line_hash["Park St."] - origin_line_hash[origin_stop]).abs
		leg2 = (destination_line_hash["Park St."] - destination_line_hash[destination_stop]).abs
		distance = leg1 + leg2
	else
		distance = (origin_line_hash[origin_stop] - origin_line_hash[destination_stop]).abs
	end
	return distance
end

puts "Starting line?"
origin_line = gets.chomp
puts "Starting stop?"
origin_stop = gets.chomp
puts "Destination line?"
destination_line = gets.chomp
puts "Destination stop"
destination_stop = gets.chomp

puts calc_distance(mbta, origin_line, destination_line, origin_stop, destination_stop)