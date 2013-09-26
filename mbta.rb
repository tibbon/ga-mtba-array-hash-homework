require 'pry'

# Define arrays for all three T lines and put them into a larger array. 
red = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis"]
orange = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
green = ["Copley", "Arlington", "Boylston", "Park Street", "Government Center", "Haymarket"]
lines = [red, orange, green]

# Define constants for Park Street array position on each line. 
PSRED = 2
PSORANGE = 3
PSGREEN = 4

# MBTA rider inputs. 
puts "Start line?"
startline = gets.chomp

puts "Start stop?"
startstop = gets.chomp

puts "End line?"
endline = gets.chomp

puts "End stop?"
endstop = gets.chomp

# Method to determine whether this trip is on a single line or not. 
def sameline(x, y)
	if x == y
		return true
	else
		return false
	end
end

#Method to equate the startline with the appropriate array. 
def arrayselect(startline)
	if startline == "Red"
		return 0
	elsif startline == "Orange"
		return 1
	else
		return 2
	end
end

if sameline(startline, endline) == true
		if arrayselect(startline) == 0
			array = red
		elsif 	 arrayselect(startline) ==1
			array = orange
		else
			array = green
		end
		start = array.index(startstop)
		finish = array.index(endstop)
		trip_length = (start.to_i - finish.to_i).abs
	puts trip_length
else
	puts "multiple line travel code"
end



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









