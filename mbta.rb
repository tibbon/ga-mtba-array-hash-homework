# Stations are values, lines are arrays, subway system is hash

lines = {
			red: ["south station", "park street", "kendall", "central", "harvard", "porter", "davis", "alewife"],
			green: ["haymarket green", "government center", "park street", "bolyston", "arlington", "copley"],
			orange: ["north station", "haymarket orange", "park street", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
}


# Tried for a long time to incorporate a way for the program to figure out which haymarket was which, but the only thing i could manage made every result return as "1".

puts "Enter your station of origin. If haymarket, enter green or orange as part of the name."
	first_stop = gets.chomp.to_s
puts "What line is that on?"
	first_line = gets.chomp.to_s
puts "What stop do you get off at?"
	second_stop = gets.chomp.to_s
puts "And what line is that on?"
	second_line = gets.chomp.to_s


# Having trouble with this one - I know that if this one passes the park street station, it should add one to the return, but i can't figure out how to factor in that conditional.

def one_line(first_line, first_stop, second_line, second_stop, lines)
	origin = lines[first_line.to_sym].index(first_stop).to_i
  destination = lines[second_line.to_sym].index(second_stop).to_i
  	return (origin - destination).abs
end


def switch_line(first_line, first_stop, second_line, second_stop, lines)
	origin = lines[first_line.to_sym].index(first_stop).to_i
	orig_park_switch = lines[first_line.to_sym].index("park street").to_i
	destination = lines[second_line.to_sym].index(second_stop).to_i
	dest_park_switch = lines[second_line.to_sym].index("park street").to_i
	pre_switch = (origin - orig_park_switch).to_i
	post_switch = (destination - dest_park_switch).to_i
		return (pre_switch.abs + post_switch.abs) + 1
end


if first_line == second_line
	puts one_line(first_line, first_stop, second_line, second_stop, lines)
else
	puts switch_line(first_line, first_stop, second_line, second_stop, lines)
end