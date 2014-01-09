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

# General flow is get_stop_input > 2D travel_array of choices > plan_route
# gives 2D finished_route of individualized travel steps > route display uses
# this 2D finished_route array, breaking it into depature/destination parings
# which format_and_print prints (while counting stops)

def get_stop_input(prompt, city)
  user_choice = [] # We will get [:user_line, user_stop] array

  print "#{prompt} line? (#{city.keys.join("/")}) "
  user_choice << gets.chomp.to_sym

  puts "#{prompt} stop options:\n\t#{city[user_choice[0]].join("\n\t")}"
  print "Your choice (match listed case exactly)? "
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

  if from_line == to_line # No transfers required
    finished_route = travel_array
  else # Transfers needed
    xfer_point = find_intersection(city, from_line, to_line)
    # Now add journey to the xfer_point and xfer at that stop
    finished_route.insert(-2, [from_line, xfer_point], [to_line, xfer_point])
  end
  finished_route
end

def format_and_print(city, this_leg) # this_leg is 2D array of two locations
  i_am = this_leg[0] # [:line, stop] to start from
  im_going = this_leg[1] # [:line, stop] to go to on this leg

  if i_am.eql?(im_going) # Start = end, happens when you start at xfer point
    puts " You are on the #{i_am[0].to_s.capitalize} Line at #{i_am[1]}"
    puts " Walk to the next line"
    0
  elsif i_am[1] == im_going[1] # Same stop/diff lines (transfer required)
    puts " Transfer from #{i_am[0].to_s.capitalize} Line to #{im_going[0].to_s.capitalize} Line"
    puts " At #{i_am[1]}" # The stop we're at
    puts " Stops: (XFER)"
    0 # The number of stops to return
  else # Dfiferent stops (but on same line because optimized route splits up xfer as separate array entry)
    puts " Take #{i_am[0].to_s.capitalize} Line"
    puts " From #{i_am[1]} to #{im_going[1]}"
    # Go back to city hash to determine stops we have gone
    num_stops = (city[i_am[0]].index(i_am[1]) - city[im_going[0]].index(im_going[1])).abs
    puts " Stops: #{num_stops}"
    num_stops # Return this so we can add to running total in route_display
  end
end

def route_display(city, finished_route)
  print "\nCalculating route"

  # Cheesy fake computer thinking
  10.times do
    sleep(0.250)
    print "."
  end

  total_stops = 0
  puts "\n\n*** FINISHED ROUTE ***\n\n"

  while finished_route.length >= 2 # As long as there are 2 entries to pass to format_for_print
    puts "**********************"
    # Remove first two, print them out (and return the number of stops for that leg)
    total_stops += format_and_print(city, finished_route.shift(2))
    puts "**********************"
  end

  puts "*** TOTAL STOPS: #{total_stops} ***"
end

def plan_a_trip(city)
  new_trip = construct_travel_array(city) # Builds array of user's desired start/end
  new_route = plan_route(city, new_trip) # Calculate the required route
  route_display(city, new_route) # Display said route
end

plan_a_trip(boston)


