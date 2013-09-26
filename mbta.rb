require 'pry'

# Define arrays for all three T lines and put them into a larger array. 
red = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis"]
green = ["Copley", "Arlington", "Boylston", "Park Street", "Government Center", "Haymarket"]
orange = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
lines = [red, orange, green]

# MBTA rider inputs. 
# puts "Start line?"
# startline = gets.chomp

# puts "Start stop?"
# startstop = gets.chomp

# # puts "End line?"
# # endline = gets.chomp

# puts "End stop?"
# endstop = gets.chomp

# Method to determine whether this trip is on a single line or not. 
def sameline (x, y)
	if x == y
		return true
	else
		return false
	end
end

if sameline(startline, endline) == true
	puts "single line travel code."





else
	puts "multiple line travel code"
end


def subway(startstop, endstop)
	red = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis"]
	start = red.index(startstop)
	finish = red.index(endstop)
	trip_length = (start.to_i - finish.to_i).abs
end

trip_length = subway(startstop, endstop)
puts trip_length

# trip_length = subway(1, 3)
# puts trip_length

# trip_length = subway(6, 2)
# puts trip_length









