# Your code goes here
require 'pry'
rails = {red: ['south station', 'park st', 'kendall', 'central', 'harvard', 'porter', 'davis', 'alewife'],
			green: ['haymarket', 'government center', 'park st', 'bolyston', 'arlington', 'copley'],
			orange: ['north station', 'haymarket', 'park st', 'state', 'downtown crossing', 'chinatown', 'back bay', 'forest hills'] }


#function that takes starting line, starting stop, and determines if
# they are on the same line as the ending line, ending stop.
# Returns trus if they are on the same line.
def same_line (starting_line, ending_line)
	starting_line == ending_line
end

def input(prompt)
	puts prompt
	gets.chomp
end

def find_index(rails, line, stop)
	rails[line].index(stop)
end

#prompt user for input
starting_line = input('What line are you getting on?').to_sym
starting_stop = input('What stop are you getting on?')

#find index of input
#start_index = rails[starting_line].index(starting_stop)
start_index = find_index(rails, starting_line, starting_stop)

#prompt more input
ending_line = input('What line are you getting off?').to_sym
ending_stop = input('What stop are you getting off?')

#find index of input
#end_index = rails[ending_line].index(ending_stop)
end_index = find_index(rails, ending_line, ending_stop)

#find index of park st for starting line
#start_park = rails[starting_line].index('park st')
start_park = find_index(rails, starting_line, 'park st')
#find index of park st for ending line
#end_park = rails[ending_line].index('park st')
end_park = find_index(rails, ending_line, 'park st')


#Function that applies once we are on the same line. Finds the distance
#between the starting stop and the end stop
def line_stops (starting_stop, ending_stop)
	stops = starting_stop - ending_stop
	stops.abs
end



=begin
def diff_line (starting_num, start_park, end_park, ending_stop)

	stops = 0
	#stops to park st on line 1
	stops += line_stops(starting_num, start_park)
	#stops from park st on line 2
	stops += line_stops(end_park, ending_stop)
end
=end


if starting_line == ending_line
	stops = start_index - end_index
	stops = stops.abs
else
	stops = 0
	#stops to park st on line 1
	stops += line_stops(start_index, start_park)
	#stops from park st on line 2
	stops += line_stops(end_park, end_index)
end

puts "You are going to have to make #{stops} stops."

#Function that takes in the user input and adds up all the stops
=begin
	def num_stops(starting_line, starting_stop, ending_line, ending_stop)
	if same_line(starting_line, ending_line) == true
		line_stops(starting_stop, ending_stop)
	else
		start_stop = starting_stop
		park_1 = 2
		park_2 = 3
		end_stop = ending_stop
		diff_line(start_stop, park_1, park_2, ending_stop)

	end
=end


#puts num_stops('red', 1, 'green', 6)

#puts diff_line(4,2,2,4)

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
#Return total number of stops
#
