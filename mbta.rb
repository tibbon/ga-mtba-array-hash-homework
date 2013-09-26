
RED_LINE =    ['south station', 'park st', 'kendall', 'central',
               'harvard', 'porter', 'davis', 'alewife']
GREEN_LINE =  ['haymarket', 'government center', 'park st', 'boylston',
               'arlington', 'copley']
ORANGE_LINE = ['north station', 'haymarket', 'park st', 'state',
               'downtown crossing', 'chinatown', 'back bay', 'forest hills']

MBTA_SUBWAY_SYSTEM = { red: RED_LINE, green: GREEN_LINE, orange: ORANGE_LINE }

def calculate_position_of_stop(line, stop)
  MBTA_SUBWAY_SYSTEM[line.to_sym].index(stop)
end

def calculate_distance_between_stops(line_on, start, line_off, stop)
  (calculate_position_of_stop(line_on, start) -
   calculate_position_of_stop(line_off, stop)).abs
end

def calculate_number_of_stops(line_on, point_of_departure, line_off, destination)
  if line_on == line_off
    return calculate_distance_between_stops(line_on, point_of_departure,
                                            line_off, destination)
  else
    return calculate_distance_between_stops(line_on,  point_of_departure,
                                            line_on,  'park st') + 
           calculate_distance_between_stops(line_off, 'park st',
                                            line_off, destination)
  end
end

def get_user_input
  print "What line are you taking? "
  line_on = gets.chomp.downcase
  print "What is your point of departure? "
  point_of_departure = gets.chomp.downcase
  print "What line are you getting off on? "
  line_off = gets.chomp.downcase
  print "What is your destination? "
  destination = gets.chomp.downcase
  return line_on, point_of_departure, line_off, destination
end

def output_total_number_of_stops
  line_on, point_of_departure, line_off, destination = *get_user_input
  total_number_of_stops = calculate_number_of_stops(line_on, point_of_departure,
                                                    line_off, destination)

  "The total number of stops to your destination riding from #{point_of_departure.capitalize} on the #{line_on.capitalize} Line to #{destination.capitalize} on the #{line_off.capitalize} Line is #{total_number_of_stops}."
end

puts output_total_number_of_stops