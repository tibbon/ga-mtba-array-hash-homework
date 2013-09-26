# red = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis"]
# orange = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
# green = ["Copley", "Arlington", "Boylston", "Park Street", "Government Center", "Haymarket"]
# lines = [red, orange, green]

# puts lines[2][5]


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