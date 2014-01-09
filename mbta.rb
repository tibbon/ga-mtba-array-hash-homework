#Creates subway hash with lines and corresponding stops
subways = {
	red: ['South Station', 'Park St.', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
	green: ['Haymarket', 'Government Center', 'Park St.', 'Boylston', 'Arlington', 'Copley'],
	orange: ['North Station', 'Haymarket', 'Park St', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills'],
}

#Prompts user for input and returns input entered
def prompt_input(prompt)
	puts prompt
	gets.chomp
end

#Determines whether travel is along a single subway line
def single_line?(line_on, line_off)
	line_on == line_off
end

def find_transfer_station(subways, line)
	subways[line].index('Park St.').to_i
end


#Determines number of stops on first line
def stops_on_line1(index_stop_on, index_stop_off, transfer_station_index_on, single_line)
	if single_line == true
			(index_stop_on - index_stop_off).abs
	else
			(index_stop_on - transfer_station_index_on).abs
	end
end

#Determines number of stops on second line
def stops_on_line2(transfer_station_index_off, index_stop_off)
	(transfer_station_index_off - index_stop_off).abs
end

#Calculates number of stops
def calculate_stops(single_line, stops_on_line1, stops_on_line2)
	if single_line == true
		stops_on_line1
	else
		stops_on_line1 + stops_on_line2
	end
end


#Prompts user for departure input
line_on = prompt_input('Please enter your departure line (red, green, orange):').to_sym
stop_on = prompt_input('Please enter your departure stop:').capitalize

#Assigns stop index for departure stop
index_stop_on = subways[line_on].index(stop_on).to_i

#Prompts user for destination input
line_off = prompt_input('Please enter your destination line (red, green, orange):').to_sym
stop_off = prompt_input('Please enter destination stop:').capitalize

#Assigns stop index for destination stop
index_stop_off = subways[line_off].index(stop_off).to_i

#Checks if travel is on a single line and assigns
single_line = single_line?(line_on, line_off)

#Gets transfer stations on departure and arrival lines
transfer_station_index_on = find_transfer_station(subways, line_on)
transfer_station_index_off = find_transfer_station(subways, line_off)

#Calculates stops on each line
stops_on_line1 = stops_on_line1(index_stop_on, index_stop_off, transfer_station_index_on, single_line)
stops_on_line2 = stops_on_line2(transfer_station_index_off, index_stop_off)

#Gives directions
puts "-------------------------------------"
puts "DIRECTIONS:"

puts "Take the #{line_on} line for #{stops_on_line1} stops."
puts "Then take the #{line_off} line for #{stops_on_line2} stops." if single_line == false

puts "Your total number of stops is: " + calculate_stops(single_line, stops_on_line1, stops_on_line2).to_s + '.'
puts "-------------------------------------"
