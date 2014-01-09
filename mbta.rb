# require 'pry'

# Interactive MBTA

# Create a HASH (the system) of ARRAYS (the line) of STRINGS (the stop)
subway = {
	red: [
		"south station",	 		# :red[0]
		"park st",				 		# :red[1] *
		"kendall",					  # :red[2]
		"central",					  # :red[3]
		"harvard",						# :red[4]
		"porter",							# :red[5]
		"davis",							# :red[6]
		"alewife"							# :red[7]
	],
	green: [
		"haymarket",					# :green[0]
		"government center",	# :green[1]
		"park st",						# :green[2] *
		"boylston",						# :green[3]
		"arlington",					# :green[4]
		"copley"							# :green[5]
	],
	orange: [
		"north station",			# :orange[0]
		"haymarket",					# :orange[1]
		"park st",						# :orange[2] *
		"state",							# :orange[3]
		"downtown crossing",	# :orange[4]
		"chinatown",					# :orange[5]
		"back bay",						# :orange[6]
		"forest hills"				# :orange[7]
	]
}


def stops_to_park(sub_way, line, stop)
	# puts "line = #{line}"
	# puts "stop = #{stop}"

	num_of_stops = -1
	stop_line = sub_way[line.to_sym]
  stop_station_index = stop_line.index(stop)
	park_station_index = stop_line.index("park st")
	num_of_stops = (stop_station_index - park_station_index).abs
end



def count_stops(sub_way, bl, bs, el, es)
	start_index = sub_way[bl.to_sym].index(bs)	  # index of start
	end_index = sub_way[el.to_sym].index(es) 	  	# index of end
	result = 0

	if bl == el
		result = (end_index - start_index).abs

	else
		result = stops_to_park(sub_way, bl, bs) + stops_to_park(sub_way, el, es)
	end

	return result
end


puts "Welcome to the MBTA. To move around, enter a line, then a station."

# orange-haymarket to park: 1
# red-davis to park: 5
# test should be 6

# red-alwife to park: 6
# green-copley to park: 3
# test should be 9


print "Enter beginning line: "
bl = gets.chomp
print "Enter beginning station: "
bs = gets.chomp

print "Enter end line: "
el = gets.chomp
print "Enter end station: "
es = gets.chomp

puts " "
puts "Beginning at the #{bl} line's #{bs} station and travelling to the #{el} line's #{es} station you will stop #{count_stops(subway, bl, bs, el, es)} times"
puts " "











