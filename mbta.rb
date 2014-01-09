# for any "prompt", return the user's input
def get_input(prompt)
	puts prompt
	gets.chomp # becomes returned value
end

red_line = ["alewife", "davis", "porter", "harvard", "central", "kendall", "park st", "south station"]
orange_line = ["north station", "haymarket", "park st", "downtown crossing", "chinatown", "back bay", "forest hills"]
green_line = ["haymarket", "gov't center", "park st", "boylston", "arlington", "copley"]

the_subway = {red_line: red_line, orange_line: orange_line, green_line: green_line}


def input_start_line
	puts "What line are you starting on? (red, orange, green)"
	gets.chomp
	# return input + "_line" # not needed?
end

def input_start_station
	puts "What station are you starting at?\n(red line: #{red_line.join(", ")})\n(orange line: #{orange_line.join(", ")})\n(green line: #{green_line.join(", ")})"
	gets.chomp
end

def input_end_line
	puts "What line are you going to? (red, orange, green)"
	gets.chomp
end

def input_end_station
	puts "What station are you getting off at?\n(red line: #{red_line.join(", ")})\n(orange line: #{orange_line.join(", ")})\n(green line: #{green_line.join(", ")})"
	gets.chomp
end


# GOAL: PRINT TOTAL NUMBER OF STOPS FOR EACH TRIP

=begin

general idea:
if start_line and end_line are the same
	then calculate (position of end_station - position of start_station)
else
	find the position of park st
	calculate (position of park st - position of start_station)
	calculate (position of park st - position of end_station)
	add them together
	maybe subtract 1?
end

=end

start_station.index("start_station")



# rewrite whole subway as 6 joined lines (e.g. red to green one way, red to green the other way, etc.)?
