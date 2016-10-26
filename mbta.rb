
# inialize the subway_line
subway_line = {
	red_line: ['South Station', 'Red/Park St', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
	green_line: ['Green/Haymarket', 'Government Center', 'Green/Park St', 'Bolyston', 'Arlington', 'Copley'],
	orange_line: ['North Station', 'Orange/Haymarket', 'Orange/Park St', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
}
#puts subway_line[:red_line][1]


puts "--------------------------------------------------------------------------------------"
puts "                 MENU                          \n          "
puts "RedLine:      South Station       Red/Park St           Kendall      "
puts "              Central             Harvard               Porter         "  
puts "              Davis               Alewife    \n   "
puts "GreenLine:    Green/Haymarket     Government Center     Green/Park St  "
puts "              Bolyston            Arlington             Copley    \n    "
puts "OragaeLine:   North Station       Orange/Haymarket      Orange/Part St"
puts "              State               Downtown Crossing     Chinatown    "
puts "              Back Bay            Forest Hills      \n       "
puts "--------------------------------------------------------------------------------------"
# get input 
puts "Plase input the train you want to take..."
train1 = gets.chomp
puts "Please input the departure station from menu.../n"
departure = gets.chomp
puts "Please input the train you want to transfer, input N for no tranfer..."
train2 = gets.chomp
puts "Please input the arrival station from menu..."
arrival = gets.chomp

puts "Calculating"
puts ". \n. \n. \n."


# calculate station number
def get_station_no(subway, sta)
	subway.each do |line, station|
		station.each do|s|
			if s == sta
				return station.index(sta) + 1
			end
		end
	end
end

def get_station_line(subway, sta)
	subway.each do |line, station|
		station.each do|s|
			if s == sta
				return line
			end
		end
	end
end

# puts get_station_no(subway_line, 'Central')
# puts get_station_line(subway_line, 'Central')


# get the count
# if user from park st: then any line is okay: just detect the arrival then in same line calculate
# if user from other than park st: then at most transfer on time, distance from that to park st + distance from arrival to park st
def count_distance(departure, arrival, sub)
	departure_line = get_station_line(sub, departure)
	arrival_line =  get_station_line(sub, arrival)

	if departure_line.to_s == 'red_line'
		distance_first = (get_station_no(sub, departure) - 2).abs
	else 
		distance_first = (get_station_no(sub, departure) - 3).abs
	end
	
	if arrival_line.to_s == 'red_line'
		distance_second = (get_station_no(sub, arrival) - 2).abs
	else 
		distance_second = (get_station_no(sub, arrival) - 3).abs
	end
	return distance_first + distance_second

end


puts "There are #{count_distance(departure, arrival, subway_line)} stations between #{departure} to #{arrival} \n"
d = get_station_line(subway_line, departure).to_s
a = get_station_line(subway_line, arrival).to_s
if d == a || d == 'Red/Park St' || d == 'Green/Park St' || d == 'Orange/Park St' || a == 'Red/Park St' || a == 'Green/Park St' || a == 'Orange/Park St' 
	puts "You should take #{get_station_line(subway_line, arrival)} to the destination! "

else get_station_line(subway_line, arrival)
puts "You should take #{get_station_line(subway_line, departure)} and transfer at Park St to #{get_station_line(subway_line, arrival)}"
end

