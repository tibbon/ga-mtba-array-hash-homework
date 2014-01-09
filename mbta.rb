mtba = { red: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
		green: ["green/haymarket", "government center", "park st", "bolyston", "arlington", "copley"],
		orange: ["north", "station", "orange/haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
}
def find_inter(name)
	name[:red].each do |i|
		inter = i
		name[:green].each do|j|
			return inter if inter == j
		end
	end
end

def count_stop(b_line, b_stop, e_line, e_stop, name, inter)
	if b_line == e_line
		return	(name[b_line.to_sym].index(b_stop) - name[e_line.to_sym].index(e_stop)).abs
	else
		return (name[b_line.to_sym].index(b_stop) - name[b_line.to_sym].index(inter)).abs + (name[e_line.to_sym].index(e_stop) - name[e_line.to_sym].index(inter)).abs
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

inter = find_inter(mtba)
puts count_stop(begin_line, begin_stop, end_line, end_stop, mtba, inter)




