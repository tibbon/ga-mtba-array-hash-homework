red_line = [
	:south_station,
	:park_st,
	:kendall,
	:central,
	:harvard,
	:porter,
	:davis,
	:alewife
	]

green_line = [
	:green_haymarket,
	:government_center,
	:park_st,
	:boylston,
	:arlington,
	:copley
	]

orange_line = [
	:north_station,
	:orange_haymarket,
	:park_st,
	:state,
	:downtown_crossing,
	:chinatown,
	:back_bay,
	:forest_hills
	]

# subway_lines = Hash.new

# subway_lines {
# 	:red_line => red_line, 
# 	:green_line => green_line, 
# 	:orange_line => orange_line
# }

# add a loop to check my arrays and fix the input data

def get_input()
	puts "What line are you getting on?"
	start_line = gets.chomp
	puts "What stop do you get on?"
	start_stop = gets.chomp
	puts "What line are you getting off of?"
	end_line = gets.chomp
	puts "What stop are you getting off of?"
	end_stop = gets.chomp
	input = [start_line, start_stop, end_line, end_stop]
	return input
end

def count_stops(line, start, last)
	total = line[last.index] - line[start.index]
end

def transfer(line1, start, line2, last)
	a = count_stops(line1, start, line1[:park_st.index])
	b = count_stops(line2, line2[:park_st.index], last)
	total = a + b
	return total
end



def count_my_stops

  start_line, start_stop, end_line, end_stop = get_input()

  if start_line == end_line
    count_stops(start_line, start_stop, end_stop)
  else
    total = transfer(start_line, start_stop, end_line, end_stop)
    return total
  end

end


total = count_my_stops
puts "You will go through #{total} stops."







