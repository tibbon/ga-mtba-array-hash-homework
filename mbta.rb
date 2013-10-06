require 'pry'
# Your code goes here

# Get user input for line_color and station.
puts "What station are you starting your jounrey from? " 
"/n Red: South Station, Park St, Kendall, Central, Harvard" 
"/n Green: Haymarket, Goverment, Park St, Boylston, Arlington, Copley"
"/n Orange: North Station, Park Street, State, Downtown Crossing, Chinatown, Back Bay, Forest Hills"
begin_station = gets.chomp

puts "What line are you starting your journey on? " "Green, Red, or Orange"
begin_line = gets.chomp

puts "What station will you end your journey with? "
"/n Red: South Station, Park St, Kendall, Central, Harvard" 
"/n Green: Haymarket, Goverment, Park St, Boylston, Arlington, Copley"
"/n Orange: North Station, Park Street, State, Downtown Crossing, Chinatown, Back Bay,  Forest Hills"
end_station = gets.chomp

puts "What line will you end your journey on?" "/nGreen, /nRed, /nOrange"
end_line = gets.chomp


# Build an function array for each line and stop. 
lines = {	
	red: ["south_station", "park_st", "Kendall", "central", "harvard"],
	green: ["haymarket", "goverment_center", "park_st", "boylston", "arlington", "copley"],
	orange: ["north_station", "haymarket", "park_st", "state", "downtown_crossing", "chinatown", "back_bay", "forest_hills"]
}

def one_line_trip(begin_station, begin_line, end_station, end_line)
	current_trip = []
				current_trip = lines.fetch(begin_line)
				dis_1 = current_trip.index(begin_station)
				dis_2 = current_trip.index(end_station)
				return (dis_1.to_i - dis_2.to_i).abs
end

#different line method
def diff_line_distance(begin_station, begin_line, end_station, end_line, multi)
	start = multi[start_line.to_sym].index(start_station).to_i
	stop = multi[stop_line.to_sym].index(stop_station).to_i





