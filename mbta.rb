# puts "Please enter your starting line"
# 	start_line = gets.chomp
# puts "Please enter your starting station"
# 	start_station = gets.chomp
# puts "Please enter your stop line"
# 	stop_line = gets.chomp
# puts "Please enter your stop station"
# 	stop_station = gets.chomp

# lines = {
#   red: ["south_station", "park_street", "kendall", "central", "harvard", "porter", "davis", "alewife"],
#   green: ["green_haymarket", "government_center", "park_street", "boylston", "arlington", "copley"],
#   orange: ["north_station", "orange_haymarket", "park_street", "state", "downtown_crossing", "chinatown", "back_bay", "forest_hills"]
# }


# #same line method
# def same_line_distance(start_line, start_station, stop_line, stop_station, array)
# 	distance_one = array[start_line.to_sym].index(start_station).to_i
# 	distance_two = array[stop_line.to_sym].index(stop_station).to_i
# 	return (distance_one - distance_two).abs
# end
 

# #different line method
# def diff_line_distance(start_line, start_station, stop_line, stop_station, array)
# 	start = array[start_line.to_sym].index(start_station).to_i
# 	stop = array[stop_line.to_sym].index(stop_station).to_i
# 	start_park_point = array[start_line.to_sym].index("park_street").to_i
# 	stop_park_point = array[stop_line.to_sym].index("park_street").to_i
# 	dis_to_park_start = (start - start_park_point).to_i.abs
# 	dis_to_park_stop = (stop - stop_park_point).to_i.abs
# 	return (dis_to_park_start + dis_to_park_stop)
# end

# if start_line == stop_line
# 	puts same_line_distance(start_line, start_station, stop_line, stop_station, lines)
# else puts diff_line_distance(start_line, start_station, stop_line, stop_station, lines)
# end

# setting up a hash with three arrays as contents.  Each array contains a series of strings that represent
# stations along the line denoted by the corresponding key.

lines = {
  red: ["south station", "park street", "kendall", "central", "harvard", "porter", "davis", "alewife"],
  green: ["haymarket green", "government center", "park street", "boylston", "arlington", "copley"],
  orange: ["north station", "haymarket orange", "park street", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
}

# asks user for input based on where they get on and 
# where they want to get off. The .downcase makes any
# user input completely lower case
puts "Which line are you starting on?"
    departure_line = gets.chomp.downcase
puts "Which station are you starting at?"
	departure_station = gets.chomp.downcase
puts "Which line will you finish on?"
	terminal_line = gets.chomp.downcase
puts "Which station are you going to?"
	terminal_station = gets.chomp.downcase


#same line method
# defining method same line with 5 parameters
def same_line(depart_line, depart_station, terminal_line, terminal_station, array)
# variable first_leg_distance is equal to an array that gets created of the
# depart line 
	first_leg_distance = array[depart_line.to_sym].index(depart_station).to_i
	second_leg_distance = array[terminal_line.to_sym].index(terminal_station).to_i
	return (first_leg_distance - second_leg_distance).abs
end
 

# different line method used in the case that the user
# needs to switch lines
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
