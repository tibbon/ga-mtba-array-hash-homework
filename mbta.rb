red_line =    ['south station', 'park st', 'kendall', 'central',
              'harvard', 'porter', 'davis', 'alewife']
green_line =  ['haymarket', 'government center', 'park st', 'boylston',
              'arlington', 'copley']
orange_line = ['north station', 'haymarket', 'park st', 'state',
              'downtown crossing', 'chinatown', 'back bay', 'forest hills']

mbta_subway_system = { red: red_line, green: green_line, orange: orange_line }

def number_of_stops(line_on, point_of_departure, line_off, destination)
  
end

print "What line are you taking? "
line_on = gets.chomp.downcase!
print "What is your point of departure? "
point_of_departure = gets.chomp.downcase!
print "What line are you getting off on? "
line_off = gets.chomp.downcase!
print "What is your destination? "
destination = gets.chomp.downcase!