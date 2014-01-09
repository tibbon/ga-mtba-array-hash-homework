mbta = { red: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
		green: ["haymarket", "government center", "park st", "bolyston", "arlington", "copley"],
		orange: ["north", "station", "haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
}


def count_stop(b_line, b_stop, e_line, e_stop, name)
	if b_line == e_line
		return	(name[:red].index(b_stop) - name[:red].index(e_stop)).abs
	else
		return ((name[:b_line].index(b_stop)-name[:b_line].index("park st"))).abs+((name[:e_line].index(b_stop)-mbta[:e_line].index("park st"))).abs
	end
end

puts "Please input the line you want to start:"
begin_line = gets.chomp
puts "please input the stop you want to start:"
begin_stop = gets.chomp
puts "Please input the line you want to end:"
end_line = gets.chomp
puts "please input the stop you want to end:"
end_stop = gets.chomp

puts count_stop(begin_line, begin_stop, end_line, end_stop, mbta)


