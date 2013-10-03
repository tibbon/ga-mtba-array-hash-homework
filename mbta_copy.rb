#I decided to create a hash of subway lines that contain the line as the key and the stops in array as values
require 'pry'

puts "Enter your starting line"
line_1 = gets.chomp
puts "Enter your starting stop"
stop_1 = gets.chomp
puts "Enter your final line"
line_2 = gets.chomp
puts "Enter your final stop"
stop_2 = gets.chomp


subway_lines = {

		:red => ['south station',
					'park street',
					'kendall',
					'central',
					'harvard',
					'porter',
					'davis',
					'alewife'],

		:green => ['haymarket',
					'government center',
					'park street', 
					'boylston',
					'arlington',
					'copley'],
		
		:orange => ['north station',
					'haymarket',
					'park street',
					'state',
					'downtown crossing',
					'chinatown',
					'back bay',
					'forest hills']				
				}

		#binding.pry

#what methods do i need? I need a method to determine the num of stops on my trip
#There are two cases, so I need two methods
total_stops = 0
def dist_same_line(line_1, stop_1, line_2, stop_2, array)
	stop_1_distance_to_park = array[line_1.to_sym].index('park street') - array[line_1.to_sym].index(stop_1).abs
	stop_2_distance_to_park = array[line_2.to_sym].index('park street') - array[line_2.to_sym].index(stop_2).abs
	total_stops = stop_1_distance_to_park + stop_2_distance_to_park
end
binding.pry
 final_stops_num = dist_same_line(line_1,stop_1,line_2,stop_2,subway_lines)
puts "I traveled #{final_stops_num} stops"
#used pry to get these
#initial_stop = subway_lines[line_1.to_sym].index(stop_1).to_i

