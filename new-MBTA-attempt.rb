require 'pry'


puts "What line are you starting on? Red, Orange, or Green"
first_line_color = gets.chomp.downcase

puts "What line are you getting off on?"
second_line_color = gets.chomp.downcase

puts "What stop are you starting at? If Haymarket, use Haymarket Green or Haymarket Orange"
begin_stop = gets.chomp.downcase

puts "What stop are you getting off at? If Haymarket, use Haymarket Green or Haymarket Orange"
end_stop = gets.chomp.downcase

def first_line(first_line_color_value)
	
	mbta = { red: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"], 
	orange: ["north station", "haymarket orange", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"], 
	green: ["haymarket green", "government center", "park st", "bolyston", "arlington", "copley"] }

	first_line = []	

	if first_line_color_value == "red"
		first_line << mbta[:red]
	elsif first_line_color_value == "orange"
		first_line << mbta[:orange]
	elsif first_line_color_value == "green"
		first_line << mbta[:green]
	else
		puts "Come again?"
	end

	return first_line

end

def second_line(second_line_color_value)
	
	mbta = { red: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"], 
	orange: ["north station", "haymarket orange", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"], 
	green: ["haymarket green", "government center", "park st", "bolyston", "arlington", "copley"] }

	second_line = []

	if second_line_color_value == "red"
		second_line << mbta[:red]
	elsif second_line_color_value == "orange"
		second_line << mbta[:orange]
	elsif second_line_color_value == "green"
		second_line << mbta[:green]
	else
		puts "Come again?"
	end

	return second_line

end


# p first_line(first_line_color)
# p second_line(second_line_color)
# binding.pry

full_line = []
full_line << first_line(first_line_color) 
full_line << second_line(second_line_color)

your_route = full_line.flatten!.uniq!
# binding.pry
def first_stops(route)
	stop_array = []
	route.each_index do |stop| 
		stop_array << stop 
	end
end

p first_stops(your_route)
binding.pry

# p full_line

# p your_route


# first_line_array = []
# first_line_array << first_line(first_line_color)

# def first_stops(first_line_array_val, begin_stop_value, end_stop_value)
# 	inside_first_line_array = []
# 	if 
# 	inside_first_line_array << first_line_array(x..y)
# 	return inside_first_line_array
# end



