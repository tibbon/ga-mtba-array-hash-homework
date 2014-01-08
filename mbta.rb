
# Your code goes here
puts ""

# Create subway lines
red_line = ['South Station', 'Park St.', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife']
green_line = ['Haymarket', 'Government Center', 'Park St.', 'Boyleston', 'Arlington', 'Copley']
orange_line = ['North Station', 'Haymarket', 'Park St.', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']

# Get user input
def user_input(prompt)
	puts prompt
	gets.chomp
end

# Get the user's starting location
start_line = user_input("What line are you beginning on? (type Red, Green, or Orange)").upcase
case start_line
when "GREEN"
	start_line = green_line
when "RED"
	start_line = red_line
when "ORANGE"
	start_line = orange_line
else
	puts "Incorrect subway line. Goodbye"
	exit
end

start_stop = user_input("What stop do you begin at?")

puts ""

# Get the user's ending location
end_line = user_input("What line are you ending on?").upcase
case end_line
when "GREEN"
	end_line = green_line
when "RED"
	end_line = red_line
when "ORANGE"
	end_line = orange_line
else
	puts "Incorrect subway line. Goodbye."
	exit
end

end_stop = user_input("What stop are you ending at?")

puts ""

# Calculate distance if subway line doesn't change
def same_line_distance(start_stop, end_stop, subway_line)
	start_index = subway_line.index("#{start_stop}").to_i
	end_index = subway_line.index("#{end_stop}").to_i
	start_index > end_index ? (start_index - end_index) : (end_index - start_index)

end

# Calculate distance is subway lines change

if start_line == end_line
	distance = same_line_distance(start_stop, end_stop, start_line)
	puts "The distance between #{start_stop} and #{end_stop} is #{distance} stops."
end





puts ""
