# Your code goes here
mbta = {
		red: ["South Station", "Park St", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
		green: ["Green Haymarket", "Government Center", "Park St", "Boylston", "Arlington", "Copley"],
		orange: ["North Station", "Orange Haymarket", "Park St", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
	}

puts "Which line are you starting from? (Please enter: red, orange, green)"
startline = gets.chomp

puts "Which station are you starting from?"
startstation = gets.chomp

puts "Which line are you ending at? (Please enter: red, orange, green)"
destinationline = gets.chomp

puts "Which station are you ending at?"
destinationstation = gets.chomp

def stops_to_park(subway, line, station)
	num_of_stops = -1
	# calculate num of stops to park st station
	park_index = subway[line.to_sym].index('Park St')
	station_index = subway[line.to_sym].index(station)
	num_of_stops = (station_index - park_index).abs
end

def calc_num_stops(subway, start_line, start_station, end_line, end_station)
	# set this to a value you'll never get, flags badness
	num_of_stops = -1
	if start_line == end_line
		start_station_index = subway[start_line.to_sym].index(start_station)
		stop_station_index = subway[end_line.to_sym].index(end_station)
		num_of_stops = (stop_station_index - start_station_index).abs
	else
		num_start_line_stops = stops_to_park(subway, start_line, start_station)
		num_end_line_stops = stops_to_park(subway, end_line, end_station)
		num_of_stops = (num_start_line_stops + num_end_line_stops).abs
	end
	num_of_stops
end

#testing  scenarios
# puts stops_to_park(mbta, 'green', 'Green Haymarket')
# puts stops_to_park(mbta, 'orange', 'Downtown Crossing')

# puts calc_num_stops(mbta, 'red', 'Alewife', 'orange','Downtown Crossing')
# puts calc_num_stops(mbta, 'green', 'Arlington', 'red','Porter')

#
