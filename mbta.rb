# # Your code goes here
# require 'pry'

# subway_lines = {
# 	orange: ["north station", "orange haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"],
# 	green: ["green haymarket", "government center", "park st", "boylston", "arlington", "copley"],
# 	red: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
# }

# puts "What subway line will you start your trip on? (organge, green, red)"
# begin_line = gets.chomp.to_sym



# def get_stops(subway_lines)
# 	stops = []
# 	subway_lines.each do |subway_line|
# 		stops << subway_line[:key]
# 	end
# end
#  subway_lines = [begin_line]

# binding.pry
require 'pry'

Orange = {
	stops: ["north station", "orange haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"],
}

Green = {
	stops: ["green haymarket", "government center", "park st", "boylston", "arlington", "copley"],

}

Red = {
	stops: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
}


def get_stops(subway_lines)
	all_stops = []
	subway_lines.each do |subway_line|
		all_stops << subway_line[:stops]
	end
	return all_stops.flatten.uniq
end

# puts "What subway line will you start your trip on? (organge, green, red)"
# begin_line = gets.chomp.to_s


subway_lines = [Orange, Green, Red]

all_stops = get_stops(subway_lines)

binding.pry