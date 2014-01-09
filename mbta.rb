lines = {
  red: ['Alewife', 'Davis', 'Porter', 'Harvard', 'Central', 'Kendall', 'Park St', 'South Station'],
  green: ['Haymarket', 'Govt Center', 'Park St', 'Boylston', 'Arlington', 'Copley'],
  orange: ['North Station', 'Haymarket', 'Park St', 'State', 'Downtown', 'Back Bay', 'Forest Hills']
}

def prompt_user(message)
  puts message
  gets.chomp
end

def distance_to_intersection(lines, line, station)
  start_index = lines[line].index(station)
  intersection_index_on_start_line = lines[line].index('Park St')
  (start_index - intersection_index_on_start_line).abs
end

start_line = prompt_user("Which line are you getting on?").to_sym
start_station = prompt_user("Which station are you getting on?")
end_line = prompt_user("Which line are you getting off?").to_sym
end_station = prompt_user("Which station are you getting off?")

start_distance = distance_to_intersection(lines, start_line, start_station)
end_distance = distance_to_intersection(lines, end_line, end_station)

total_distance = start_distance + end_distance

puts "The distance is: #{total_distance}"
