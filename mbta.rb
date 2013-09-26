# setting up a hash with three arrays as contents.  Each array contains a series of strings that represent
# stations along the line denoted by the corresponding key.
lines = {
  red: ["south station", "park street", "kendall", "central", "harvard", "porter", "davis", "alewife"],
  green: ["haymarket green", "government center", "park street", "boylston", "arlington", "copley"],
  orange: ["north station", "haymarket orange", "park street", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
}

puts "Which line are you starting on?"
    departure_line = gets.chomp.downcase
puts "Which station are you starting at?"
	departure_station = gets.chomp.downcase
puts "Which line will you finish on?"
	terminal_line = gets.chomp.downcase
puts "Which station are you going to?"
	terminal_station = gets.chomp.downcase

#method to return 


#same line method
def same_line(depart_line, depart_station, terminal_line, terminal_station, array)
	first_leg_distance = array[depart_line.to_sym].index(depart_station).to_i
	second_leg_distance = array[terminal_line.to_sym].index(terminal_station).to_i
	return (first_leg_distance - second_leg_distance).abs
end
 

#different line method
def change_lines(depart_line, depart_station, terminal_line, terminal_station, array)

	depart_location = array[depart_line.to_sym].index(depart_station).to_i
	depart_line_park_index = array[depart_line.to_sym].index("park street").to_i

	terminal_location = array[terminal_line.to_sym].index(terminal_station).to_i
	terminal_line_park_index = array[terminal_line.to_sym].index("park street").to_i

	dis_to_park_first_leg = (depart_location - depart_line_park_index).to_i
	dis_to_park_second_leg = (terminal_location - terminal_line_park_index).to_i

	return (dis_to_park_first_leg.abs + dis_to_park_second_leg.abs)
end


# if/else to decide which method to use to calculate distance 
if departure_line == terminal_line
	puts same_line(departure_line, departure_station, terminal_line, terminal_station, lines)

else puts change_lines(departure_line, departure_station, terminal_line, terminal_station, lines)
end