#subway system
require 'pry'
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
mbta = Hash.new

mbta = {
  red_line: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"],
  green_line: ["haymarket/green", "government center", "park st", "boylston", "arlington", "copley"],
  orange_line: ["north station", "haymarket/orange", "park street", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
}


def distance(start_line, start_station, end_line, end_station, hash)
#binding.pry
  first_station = hash[start_line.to_sym].index(start_station).to_i
  end_line_park_index = hash[end_line.to_sym].index("park st").to_i
	last_station = hash[end_line.to_sym].index(end_station).to_i

  start_to_park = (first_station - end_line_park_index)
  end_to_park = (last_station - end_line_park_index)

  return (start_to_park.abs + end_to_park.abs)
end

result = distance(start_line, start_station, end_line, end_station, mbta)
puts result



