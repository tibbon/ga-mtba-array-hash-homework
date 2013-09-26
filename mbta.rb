

red = {
	'south station' => 1,
	'park st' => 0,
	'kendall' => 1,
	'central' => 2,
	'harvard' => 3,
	'porter' => 4,
	'davis' => 5,
	'alewife' => 6,
	}

green = {
	'haymarket' => 2,
	'government center' => 1,
	'park st' => 0,
	'boylston' => 1,
	'arlington' => 2,
	'copley' => 3
	}

orange = {
	'north station' => 2,
	'haymarket' => 1,
	'park st' => 0,
	'state' => 1,
	'downtown crossing' => 2,
	'chinatown' => 3,
	'back bay' => 4,
	'forest hills' => 5
	}

subway_lines = Hash.new

subway_lines = [
	red, 
	green, 
	orange
]

def line_finder(string)
	case string.downcase[0]
	when 'r'
		return 0
	when 'g'
		return 1
	when 'o'
		return 2
	else
		puts "Not in our system."
	end
end


puts "What line are you getting on?"
answer = gets.chomp
line = line_finder(answer) 
# this returns an integer 0 - 2
start_line = subway_lines[line] 
# this returns a hash of subway stops

puts "What stop are you getting on?"
answer = gets.chomp.downcase
start_stop = start_line[answer] 
#returns a value: number of stops till park st.

puts "What line are you getting off?"
answer = gets.chomp
line = line_finder(answer) 
# this returns an integer 0 - 2
end_line = subway_lines[line] 
# this returns a hash of subway stops

puts "What stop are you getting off?"
answer = gets.chomp.downcase
end_stop = end_line[answer] 
#returns a value: number of stops till park st.

total_stops = start_stop + end_stop
puts "You will take #{total_stops} stops on your journey."
puts "Godspeed!"
