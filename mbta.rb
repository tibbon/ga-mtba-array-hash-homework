require 'pry'

red_line =    ['south station', 'park st', 'kendall', 'central',
               'harvard', 'porter', 'davis', 'alewife']
green_line =  ['haymarket', 'government center', 'park st', 'boylston',
               'arlington', 'copley']
orange_line = ['north station', 'haymarket', 'park st', 'state',
               'downtown crossing', 'chinatown', 'back bay', 'forest hills']

MBTA_SUBWAY_SYSTEM = { red: red_line, green: green_line, orange: orange_line }

def calculate_position_of_stop(line, stop)
  MBTA_SUBWAY_SYSTEM[line.to_sym].index(stop)
end

def calculate_number_of_stops(line_on, point_of_departure, line_off, destination)
  return (calculate_position_of_stop(line_on, point_of_departure) -
          calculate_position_of_stop(line_off, destination)).abs if line_on == line_off
end

print "What line are you taking? "
line_on = gets.chomp.downcase
print "What is your point of departure? "
point_of_departure = gets.chomp.downcase
print "What line are you getting off on? "
line_off = gets.chomp.downcase
print "What is your destination? "
destination = gets.chomp.downcase

# puts line_on, point_of_departure, line_off, destination

total_number_of_stops = calculate_number_of_stops(line_on, point_of_departure, 
                                                  line_off, destination)

puts "There are a total of #{total_number_of_stops} stops to your destination."