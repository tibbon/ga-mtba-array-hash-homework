# red = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis"]
# orange = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
# green = ["Copley", "Arlington", "Boylston", "Park Street", "Government Center", "Haymarket"]
# lines = [red, orange, green]

# puts lines[2][5]

# if sameline(startline, endline) == true
# 	if startline == "Red"
# 		start = red.index(startstop)
# 		finish = red.index(endstop)
# 		trip_length = (start.to_i - finish.to_i).abs
# 	elsif startline == "Orange"
# 		start = orange.index(startstop)
# 		finish = orange.index(endstop)
# 		trip_length = (start.to_i - finish.to_i).abs
# 	elsif startline == "Green"
# 		start = green.index(startstop)
# 		finish = green.index(endstop)
# 		trip_length = (start.to_i - finish.to_i).abs
# 	else
# 		puts "That line doesn't exist or is a bus."
# 	end
# else
# 	puts "multiple line travel code"
# end

# def subway(startstop, endstop)
# 	red = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis"]
# 	start = red.index(startstop)
# 	finish = red.index(endstop)
# 	trip_length = (start.to_i - finish.to_i).abs
# end

# trip_length = subway(startstop, endstop)
# puts trip_length

# trip_length = subway(1, 3)
# puts trip_length

# trip_length = subway(6, 2)
# puts trip_length

def array(startline)
	if startline == "Red"
		return 0
	elsif startline == "Orange"
		return 1
	else
		return 2
	end
end

puts array("Red")
puts array("Orange")
puts array("Green")