subway_lines = {
	'red' => ['south station', 
			'park st', 
			'kendall', 
			'central', 
			'harvard', 
			'porter', 
			'davis', 
			'alewife'],

		'green' => ['haymarket', 
			'government center', 
			'park st', 
			'boylston', 
			'arlington', 
			'copley'],

		'orange' => ['north station', 
			'haymarket', 
			'park st', 
			'state', 
			'downtown crossing', 
			'chinatown', 
			'back bay', 
			'forest hills']
}

def find_which_line(subway_lines, station)

	subway_lines.each do |line, arr|
		if arr.include? station
		  return line
		end
	end
end


# Start interrogation session!

puts "Start Station?"
station1 = gets.chomp

if station1 == 'haymarket'
  puts "What line is that on?"
  line1 = gets.chomp
else
  line1 = find_which_line(subway_lines, station1)
end

puts "End Station?"
station2 = gets.chomp

if station2 == 'haymarket'
  puts "What line is that on?"
  line2 = gets.chomp
else
  line2 = find_which_line(subway_lines, station1)
end


# find index numbers for user's stations
a = subway_lines[line1].index(station1)
b = subway_lines[line2].index(station2)

# find index numbers for transfer station
park_a = subway_lines[line1].index('park st')
park_b = subway_lines[line2].index('park st')

if line1 == line2
  distance = (a - b).abs
else
  distance = (a - park_a).abs + (b - park_b).abs
end

puts "You'll be traveling #{distance} stops on your trip."
puts "Travel safely!"





