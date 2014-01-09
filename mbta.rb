mtba = { red: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
		green: ["haymarket", "government center", "park st", "bolyston", "arlington", "copley"],
		orange: ["north", "station", "haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
}
def count_stop(b_line, b_stop, e_line, e_stop, name)
	if b_line == e_line
		return	(string_array(b_line, name).index(b_stop) - string_array(e_line, name).index(e_stop)).abs + 1

	else
		return (string_array(b_line, name).index(b_stop) - string_array(e_line, name).index("park st")).abs + (string_array(e_line, name).index(e_stop) - string_array(e_line, name).index("park st")).abs + 1
	end

end

def string_array(line, name)
	if line == 'red'
		return name[:red]
	elsif line == 'green'
		return name[:green]
	else return name[:orange]
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


