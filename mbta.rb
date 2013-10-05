# Your code goes here

subway_lines = {
	"orange" => ["north station", "orange haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"],
	"green" => ["green haymarket", "government center", "park st", "boylston", "arlington", "copley"],
	"red" => ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
}

def check_one_or_two_line_trip(start_line, start_station, end_line, end_station)
	if start_line == end_line
		#one_line_trip(start_line, start_station, end_line, end_station)
		true
	else
		#two_line_trip(start_line, start_station, end_line, end_station)
		false
	end
end

subway_lines.each_with_index do |color, station|
	

def one_line_trip(start_line, start_station, end_line, end_station)

end

def two_line_trip(start_line, start_station, end_line, end_station)

end

# puts check_one_or_two_line_trip("orange", "state", "orange", "back bay")
#puts one_line_trip("orange", "state", "orange", "back bay")


##############THIS IS A METHOD THAT ACTUALLY WORKS--NOT FOR THE RIGHT THING, BUT IT DOES A THING ######################
# def get_stops(not_confusing_name)
# 	all_stops = []
# 	not_confusing_name.each do |subway_line, stations|
# 		all_stops << stations
# 	end
# 	return all_stops#.flatten.uniq
# end

# p get_stops(subway_lines)
########################################################################################################################



# def trying_to_get_into_my_hash(key)
# 	if key == "orange"
# 		puts subway_lines[:orange]
# 	end
# end

# def a_method(argument)
# 	new_array = []
# 	if argument == "orange"
# 		new_array << subway_lines[:orange]
# 	elsif argument == "green"
# 		new_array <<  subway_lines[:green]
# 	elsif argument == "red"
# 		new_array <<  subway_lines[:red]
# 	else
# 		return "We don't have that in Boston, try another line."
# 	end
# 	return new_array
# end 

# puts "What subway line will you start your trip on? (organge, green, red)"
# begin_line = gets.chomp.to_s
# # begin_stops = a_method(begin_line)
# anything = trying_to_get_into_my_hash(begin_line)

# def get_stops(subway_lines)
# 	stops = []
# 	subway_lines.each do |subway_line|
# 		stops << subway_line[:key]
# 	end
# end
#  subway_lines = [begin_line]

# binding.pry
# require 'pry'

# Orange = {
# 	stops: ["north station", "orange haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"],
# }

# Green = {
# 	stops: ["green haymarket", "government center", "park st", "boylston", "arlington", "copley"],

# }

# Red = {
# 	stops: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
# }


# def get_stops(subway_lines)
# 	all_stops = []
# 	subway_lines.each do |subway_line|
# 		all_stops << subway_lines[:stops]
# 	end
# 	return all_stops.flatten.uniq
# end

# # puts "What subway line will you start your trip on? (organge, green, red)"
# # begin_line = gets.chomp.to_s


# subway_lines = [Orange] #, Green, Red]

# puts get_stops(subway_lines)
#binding.pry