# Your code goes here

rails = {red_line: ['south station', 'park st', 'kendall', 'central', 'harvard', 'porter', 'davis', 'alewife'],
			green_line: ['haymarket', 'government center', 'park st', 'bolyston', 'arlington', 'copley'],
			orange_line: ['north station', 'haymarket', 'park st', 'state', 'downtown crossing', 'chinatown', 'back bay', 'forest hills'] }


#accesses each stop on a line.
rails[:red_line].each_with_index { |x, y| puts "#{x}: #{y}" }


#function that takes starting line, starting stop, and determines if
# they are on the same line as the ending line, ending stop.
# Returns trus if they are on the same line.
def same_line (starting_line, ending_line)
	starting_line == ending_line
end


#Function that applies once we are on the same line. Finds the distance
#between the starting stop and the end stop
def line_stops (starting_stop, ending_stop)
	stops = starting_stop - ending_stop
end



#Function that takes in the user input and adds up all the stops


puts same_line('res_line', 'res_line')



#Flow:
#
#Get user input
#
#Check and see if we're dealing with the same line (same_line)
#
		#if we are, see how many stops we have to go (line_stops)
		#exit
#
#If we're not, see how many stops we have until park st. (line_stops)
#Switch to the appropriate line, and see how far it is until
#the stop we want (line_stops)
#
#Return number of stops
#
