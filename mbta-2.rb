#Creates subway hash with lines and corresponding stops
def subway_routes
	subways = {
		red: ['South Station', 'Park St.', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
		green: ['Haymarket', 'Government Center', 'Park St.', 'Boylston', 'Arlington', 'Copley'],
		orange: ['North Station', 'Haymarket', 'Park St', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills'],
}
end

#Prompts user for input and returns input entered
def prompt_input(prompt)
	puts prompt
	gets.chomp
end

#Calculates number of stops
def calculate_stops(line_on, stop_on, line_off, stop_off)
	subways = subway_routes

	if line_on == line_off
		(subways[line_on].index(stop_on).to_i - subways[line_off].index(stop_off).to_i).abs
	else
		(subways[line_on].index(stop_on).to_i - subways[line_on].index('Park St.').to_i).abs + (subways[line_off].index('Park St.').to_i - subways[line_off].index(stop_off).to_i).abs
	end
end

#Prompts user for departure input
line_on = prompt_input('Please enter your departure line (red, green, orange):').to_sym
stop_on = prompt_input('Please enter your departure stop:').capitalize

#Prompts user for destination input
line_off = prompt_input('Please enter your destination line (red, green, orange):').to_sym
stop_off = prompt_input('Please enter destination stop:').capitalize

puts "-------------------------------------"
puts "Your total number of stops is: " + calculate_stops(line_on, stop_on, line_off, stop_off).to_s
puts "-------------------------------------"
