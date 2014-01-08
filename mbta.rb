
# Your code goes here
puts ""


# Create a hash with subway lines
mbta = {
	red_line: ['South Station', 'Park St.', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
	green_line: ['Haymarket', 'Government Center', 'Park St.', 'Boyleston', 'Arlington', 'Copley'],
	orange_line: ['North Station', 'Haymarket', 'Park St.', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
}

# Get user input
def user_input(prompt)
	puts prompt
	gets.chomp
end

# Get the user's starting location
start_line = user_input("What line are you beginning on? (type Red, Green, or Orange)").capitalize
case start_line
when "Green"
	start_line_array = mbta[:green_line]
when "Red"
	start_line_array = mbta[:red_line]
when "Orange"
	start_line_array = mbta[:orange_line]
else
	puts "Incorrect subway line. Goodbye"
	exit
end

start_stop = user_input("What stop do you begin at?")

puts ""

# Get the user's ending location
end_line = user_input("What line are you ending on?").capitalize
case end_line
when "Green"
	end_line_array = mbta[:green_line]
when "Red"
	end_line_array = mbta[:red_line]
when "Orange"
	end_line_array = mbta[:orange_line]
else
	puts "Incorrect subway line. Goodbye."
	exit
end

end_stop = user_input("What stop are you ending at?")

puts ""

# Calculate distance is subway lines change
# Calculate line distance to park
def distance_to_park(subway_stop, subway_line)
	start_index = subway_line.index("#{subway_stop}")
	park_index = subway_line.index('Park St.')
	start_index > park_index ? (start_index - park_index) : (park_index - start_index)
end

distance = distance_to_park(start_stop, start_line_array) +  distance_to_park(end_stop, end_line_array)
puts "The distance between #{start_stop} on the #{start_line} Line and #{end_stop} on the #{end_line} Line is #{distance} stops."

puts ""
