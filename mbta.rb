mtba = { red: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
		green: ["green/haymarket", "government center", "park st", "bolyston", "arlington", "copley"],
		orange: ["north", "station", "orange/haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
}

def count_stop(b_line, b_stop, e_line, e_stop, name)
	if b_line == e_line
		return	(name[b_line.to_sym].index(b_stop) - name[e_line.to_sym].index(e_stop)).abs + 1
	else
		return (name[b_line.to_sym].index(b_stop) - name[b_line.to_sym].index("park st")).abs + (name[e_line.to_sym].index(e_stop) - name[e_line.to_sym].index("park st")).abs + 1
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

puts count_stop(begin_line, begin_stop, end_line, end_stop, mtba)


