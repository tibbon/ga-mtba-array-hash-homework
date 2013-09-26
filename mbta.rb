


puts "Where would you like to go?"
destination = gets.chomp



puts "What line is that on?"
endline = gets.chomp


puts "What station will you be departing from?"
location = gets.chomp


puts "What line is that on?"
startline = gets.chomp


LINES = {
    :red => [:southstation,:parkst,:kendall,:central,:harvard,:porter,:davis,:alewife],
	:green => [:haymarket,:governmentcenter,:parkst,:bolyston,:arlington,:copley],
	:orange => [:northstation,:haymarket,:parkst,:state,:downtowncrossing,:chinatown,:backbay,:foresthills]


COMMONSTOP = (LINES[:red] & LINES[:green] & LINES[:orange])

def destination(line, stop)
	LINES[line]
end

def stop_distance(line, enter_stop, exit_stop)
	stop_index(line, enter_stop) - stop_index(line, exit_stop)
end

def distance(entry, exit)
	line_entry, stop_entry = entry
	line_exit, stop_exit = exit

	if line_entry == line_exit
		dist = stop_distance(line_entry,stop_entry,stop_exit)
	else
		dist = stop_distance(line_entry,stop_entry,COMMONSTOP) -
					stop_distance(line_exit,stop_exit,COMMONSTOP)
	end

	return dist.abs
end

puts distance([:orange,:northstation],[:orange,:state])
puts distance([:orange,:parkst],[:green,:bolyston])

