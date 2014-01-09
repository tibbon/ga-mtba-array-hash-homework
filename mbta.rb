
#subway system

#user input
def get_input(prompt)
	puts prompt
	gets.chomp
end

start_line = get_input("which line will you start on? red_line, green_line, or orange_line?")
start_station = get_input("which station on that line will you start on?")
end_line = get_input("which line will you end on? red_line, green_line, or orange_line?")
end_station= get_input("which station on that line will you end on?")

#calculation
# all three intersect at park st
mbta =Hash.new


	red_line = [
		"south station",
		"park st",
		"kendall",
		"central",
		"harvard",
		"porter",
		"davis",
		"alewife"]

	green_line = [
		"green/haymarket",
		"government center",
		"park st",
		"bolyston",
		"arlington,
		copley"]

orange_line = [
	"north station",
	 "orange/haymarket",
	 "park st",
	  "state",
	  "downtown crossing",
	  "chinatown",
	  "back bay",
	  "forest hills"]

case start_line
when "red_line"
	start_line_array = red_line
when "green_line"
	start_line_array = green_line
when "orange_line"
	start_line_array = orange_line
end

case end_line
when "red_line"
	end_line_array = red_line
when "green_line"
	end_line_array = green_line
when "orange_line"
	end_line_array = orange_line
end

def dist(station, line_array)
	st = line_array.index("#{station}").to_i
	park_st =line_array.index("park st").to_i
	(st - park_st).abs
end

start = dist(start_station, start_line_array)
ending = dist(end_station, end_line_array)

puts (start + ending)


