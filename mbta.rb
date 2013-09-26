# # Your code goes here
# def trip(start_line, start_stop, end_line, end_stop)
# if start_line == end_line

# end

# red_line = ["south_st", "park_st", "kendall", "central", "harvard", "porter", "davis", "alewife"]
# green_line = ["haymarket_green", "govt_center", "park_st", "boylston", "arlington", "copley"]
# orange_line = ["north_st", "haymarket_orange", "park_st", "state_st", "downtown", "chinatown", "back_bay", "forest_hill"]

#####################


# red_line = {r_stop1: "south_st", r_stop2: "park_st", r_stop3: "kendall", r_stop4: "central", r_stop5: "harvard", r_stop6: "porter", r_stop7: "davis", r_stop8: "alewife"}

# green_line = {g_stop1: "haymarket_green", g_stop2: "govt_center", g_stop3: "park_st", g_stop4: "boylston", g_stop5: "arlington", g_stop6: "copley"}
# orange_line = {o_stop1: "north_st", o_stop2: "haymarket_orange", o_stop3: "park_st", o_stop4: "state_st", o_stop5: "downtown", o_stop6: "chinatown", o_stop7: "back_bay", o_stop8: "forest_hill"}

#####################

# trip(start_line, start_stop, end_line, end_stop)

Train_routes = {"red line" => ["south st", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"], "green line" => ["haymarket green", "govt center", "park st", "boylston", "arlington", "copley"], "orange line" => ["north st", "haymarket orange", "park st", "state st", "downtown", "chinatown", "back bay", "forest hill"]}

########

# red_line = ["south_st", "park_st", "kendall", "central", "harvard", "porter", "davis", "alewife"]

# puts red_line["south_st"]
###########
# def count_between (route, first, last)
#   route.count{|v| v.between?(first, last)}
# end

# puts count_between (red_line, "south_st", "alewife")





############ worked for one track#########
# def check_if_one_line(start_line, start_stop, end_line, end_stop)
# 	newlist = []
# 	if start_line == end_line
# 		newlist = Train_routes.fetch(start_line)
# 		pos1 = newlist.index(start_stop)
# 		pos2 = newlist.index(end_stop)
# 		return (pos1.to_i - pos2.to_i).abs
# 	else
# 		false
# 	end
# end	


############ worked for one track#########

def one_track_trip(start_line, start_stop, end_line, end_stop)
	newlist = []
		newlist = Train_routes.fetch(start_line)
		pos1 = newlist.index(start_stop)
		pos2 = newlist.index(end_stop)
		return (pos1.to_i - pos2.to_i).abs
end

def two_track_trip(start_line, start_stop, end_line, end_stop)
	first_track = Train_routes.fetch(start_line)
	second_track = Train_routes.fetch(end_line)
	park = first_track.index("park st")
	start = first_track.index(start_stop)
	first_dist = (park.to_i - start.to_i).abs
	park2 = second_track.index("park st")
	start2 = second_track.index(end_stop)
	second_dist = (park2.to_i - start2.to_i).abs
	first_dist + second_dist
end

def one_or_two_lines(start_line, start_stop, end_line, end_stop)
	if start_line == end_line
		one_track_trip(start_line, start_stop, end_line, end_stop)
	else
		two_track_trip(start_line, start_stop, end_line, end_stop)
	end
end

def count_trip(start_line, start_stop, end_line, end_stop)
	if start_stop == end_stop
		"You should probably stop drinking on the train"
	else
		one_or_two_lines(start_line, start_stop, end_line, end_stop)
	end
end

puts "Please enter your starting line as follows: red line, green line, or orange line"
start_line = gets.chomp
case start_line
when "red line"
	puts "Please choose your starting stop as follows: south st, park st, kendall, central, harvard, porter, davis, alewife"
	start_stop = gets.chomp
when "green line"
	puts "Please choose your starting stop as follows: haymarket green, govt center, park st, boylston, arlington, copley"
	start_stop = gets.chomp	
when "orange line"
	puts "Please choose your starting stop as follows: north st, haymarket orange, park st, state st, downtown, chinatown, back bay, forest hill"
	start_stop = gets.chomp	
else
	puts "You should probably stop drinking on the train!"
end

puts "Please enter your ending line as follows: red line, green line, or orange line"
end_line = gets.chomp
case end_line
when "red line"
	puts "Please choose your ending stop as follows: south st, park st, kendall, central, harvard, porter, davis, alewife"
	end_stop = gets.chomp
when "green line"
	puts "Please choose your ending stop as follows: haymarket green, govt center, park st, boylston, arlington, copley"
	end_stop = gets.chomp	
when "orange line"
	puts "Please choose your ending stop as follows: north st, haymarket orange, park st, state st, downtown, chinatown, back bay, forest hill"
	end_stop = gets.chomp	
else
	puts "You should probably stop drinking on the train!"
end

puts "Your trip will be #{count_trip(start_line, start_stop, end_line, end_stop)} stops"

# puts count_trip("red line", "south st", "red line", "south st") # single line forward
# puts count_trip("red line", "south st", "orange line", "south st") # single line forward
# puts count_trip("red line", "south st", "red line", "davis") # single line forward
# puts count_trip("red line", "south st", "green line", "boylston") # two line forward
# puts count_trip("green line", "copley", "green line", "govt center") # single line backwards
# puts count_trip("orange line", "forest hill", "red line", "south st") # two line backwards
# puts count_trip("red line", "south st", "green line", "haymarket green") # two line forward then back
# puts count_trip("green line", "copley", "red line", "alewife") # two line back then forward