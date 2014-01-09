boston = {
  red: [
    "South Station",
    "Park Street",
    "Kendall",
    "Central",
    "Harvard",
    "Porter",
    "Davis",
    "Alewife",
  ],

  green: [
    "Haymarket/Green",
    "Government Center",
    "Park Street",
    "Boylston",
    "Arlington",
    "Copley"
  ],

  orange: [
    "North Station",
    "Haymarket/Orange",
    "Government Center",
    "Park Street",
    "State",
    "Downtown Crossing",
    "Chinatown",
    "Back Bay",
    "Forest Hills"
  ]
}

def get_stop_input(prompt, city)
  user_choice = [] # We will get [:user_line, user_stop] array

  print "#{prompt} line? (#{city.keys.join("/")}) "
  user_choice << gets.chomp.to_sym

  puts "#{prompt} stop options:\n\t#{city[user_choice[0]].join("\n\t")}"
  print "Your choice? "
  user_choice << gets.chomp
end

def construct_travel_array(city)
  travel_array = []
  travel_array << get_stop_input("Start", city)
  travel_array << get_stop_input("End", city)
  travel_array # Returns 2D array: [[startline, startstop], [endline, endstop]]
end

def find_intersection(city, from_line, to_line)
  (city[from_line] & city[to_line])[0].to_s # Find intersection, convert to string
end

def plan_route(city, travel_array) # Return 2D array of stops
  finished_route = travel_array
  from_line = travel_array[0][0]
  to_line = travel_array[1][0]

  puts "\n"

  5.times do
    print "."
    sleep(0.5)
  end

  print "Calculating Results"

  5.times do
    print "."
    sleep(0.5)
  end

  if from_line == to_line # No transfers required
    finished_route = travel_array
  else # Transfers needed
    xfer_point = find_intersection(city, from_line, to_line)
    # Now add journey to the xfer_point and xfer at that stop
    finished_route.insert(-2, [from_line, xfer_point], [to_line, xfer_point])
  end
  finished_route
end

def route_display(city, finished_route)
  total_stops = 0
  puts "\n\n*** FINISHED ROUTE ***"

  (0..(finished_route.length - 2)).each do |index|
    i_am = finished_route[index] # Remember these are [:line, stop]
    im_going = finished_route[index + 1]

    puts "**********************"

    if i_am[1] == im_going[1] # Same location (hence transfer required)
      puts " Transfer from #{i_am[0].to_s.capitalize} Line to #{im_going[0].to_s.capitalize} Line"
      puts " At #{i_am[1]}"
      puts " Stops: (XFER)"
    else # Different location (but same line because of how finished_route works)
      puts " Take #{i_am[0].to_s.capitalize} Line"
      puts " From #{i_am[1]} to #{im_going[1]}"
      # Long code that just subtracts the relevant indicies to find stops (same lines)
      num_stops = (city[i_am[0]].index(i_am[1]) - city[im_going[0]].index(im_going[1])).abs
      puts " Stops: #{num_stops}"
      total_stops += num_stops
    end
  end
  puts "*** TOTAL STOPS: #{total_stops} ***"
end

journey = construct_travel_array(boston)
journey_route = plan_route(boston, journey)
route_display(boston, journey_route)

# def which_direction(city, from_line, to_line)
#   transfer_at = find_intersection(from_line, to_line)
#   if city[from_line].index?(transfer_at) == city[]
