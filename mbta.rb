puts "Please enter your starting line"
	start_line = gets.chomp
puts "Please enter your starting station"
	start_station = gets.chomp
puts "Please enter your stop line"
	stop_line = gets.chomp
puts "Please enter your stop station"
	stop_station = gets.chomp

lines = {
  red: ["south_station", "park_street", "kendall", "central", "harvard", "porter", "davis", "alewife"],
  green: ["green_haymarket", "government_center", "park_street", "boylston", "arlington", "copley"],
  orange: ["north_station", "orange_haymarket", "park_street", "state", "downtown_crossing", "chinatown", "back_bay", "forest_hills"]
}


#same line method
def same_line_distance(start_line, start_station, stop_line, stop_station, array)
	distance_one = array[start_line.to_sym].index(start_station).to_i
	distance_two = array[stop_line.to_sym].index(stop_station).to_i
	return (distance_one - distance_two).abs
end
 

#different line method
def diff_line_distance(start_line, start_station, stop_line, stop_station, array)
	start = array[start_line.to_sym].index(start_station).to_i
	stop = array[stop_line.to_sym].index(stop_station).to_i
	start_park_point = array[start_line.to_sym].index("park_street").to_i
	stop_park_point = array[stop_line.to_sym].index("park_street").to_i
	dis_to_park_start = (start - start_park_point).to_i.abs
	dis_to_park_stop = (stop - stop_park_point).to_i.abs
	return (dis_to_park_start + dis_to_park_stop)
end

if start_line == stop_line
	puts same_line_distance(start_line, start_station, stop_line, stop_station, lines)
else puts diff_line_distance(start_line, start_station, stop_line, stop_station, lines)
end