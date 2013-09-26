

# Subway Data Fields
red_line = [ "south station", "park street", "kendall", "central", "harvard", "porter", "davis", "alewife" ] 
green_line = [ "haymarket", "government center", "park street", "boylston", "arlington", "copley" ]
orange_line = [ "north station", "haymarket" "park street", "state", "downtown crossing", "chinatown", "back bay", "forest hills" ]


mbta_line = {
	red: red_line, # [ "south station", "park street", "kendall", "central", "harvard", "porter", "davis", "alewife" ],
	green: green_line, #[ "haymarket", "government center", "park street", "boylston", "arlington", "copley" ],
	orange: orange_line #[ "north station", "haymarket" "park street", "state", "downtown crossing", "chinatown", "back bay", "forest hills" ]

	}

intersection = "park street"


	puts "I'll tell you how many stops you have on your subway trip."
	puts "Enter your starting line and station.\n"
	puts "LINE:\n"
	start_line = gets.chomp.downcase.to_sym
	puts "STATION:\n"
	start_station = gets.chomp.downcase
	puts "Enter your destination line and station.\n"
	puts "LINE:\n"
	end_line = gets.chomp.downcase.to_sym
	puts "STATION:\n"
	end_station = gets.chomp.downcase
	puts



# Compute the magnitude of the distance between any two values in an array
def array_mag( any_array, start_value, end_value )
	start_index = 0
	stop_index = 0

	start_index = any_array.index { |step| step == start_value }
	stop_index = any_array.index { |step| step == end_value }

	puts start_index
	puts stop_index

	distance = (start_index.to_i - stop_index.to_i).abs
	return distance
end


first_segment = array_mag( mbta_line[start_line], start_station, intersection )
#puts first_segment.class
#puts second_segment.class


second_segment = array_mag( mbta_line[end_line], intersection, end_station )

#length = first_segment + second_segment

#puts "\n\nYour trip will take you " + length.to_s + " stops!. Have a nice trip :)"






