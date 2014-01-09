

require 'pry'

subway = {
					redline:	["south station", "park street", "kendall", "central", "harvard", "porter", "davis", "alewife"],
					orangeline: ["north station", "haymarket", "park street", "boylston", "arlington", "copley"],
					greenline: ["haymarket", "government center", "park street", "boylston", "arlington", "copley"]
				}

puts "On which line will you enter the subway?"
line_enter = gets.chomp.downcase

puts "At which stop will you enter the subway?"
start_enter = gets.chomp.downcase

puts "On which line will you exit the subway?"
line_exit = gets.chomp.downcase

puts "At which stop will you exit the subway?"
stop_exit = gets.chomp.downcase

def enter_exit_same_line(line_enter, start_enter, line_exit, stop_exit, subway)
  stops_array = subway[line_enter.to_sym]
  stops_array2 = subway[line_exit.to_sym]
	switch_one = stops_array.index(start_enter)
	switch_two = stops_array2.index(stop_exit)
	return (switch_one - switch_two).abs
end


def enter_exit_different_line(line_enter, start_enter, line_exit, stop_exit, subway)
	stops_array1 = subway[line_enter.to_sym]
	stops_array2 = subway[line_exit.to_sym]
	start = stops_array1.index(start_enter)
	switch_one = stops_array1.index("park street")
	switch_two = stops_array2.index("park street")
	stop = stops_array2.index(stop_exit)
	binding.pry
	line1_stops = (start - switch_one)
	line2_stops = (stop - switch_two)
	return (line1_stops + line2_stops).abs
end

if line_enter == line_exit
		puts enter_exit_same_line(line_enter, start_enter, line_exit, stop_exit, subway)

else
	puts enter_exit_different_line(line_enter, start_enter, line_exit, stop_exit, subway)
end


