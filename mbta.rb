subway = {
  :red => ['south station', 'park st', 'kendall', 'central', 'harvard', 'porter', 'davis', 'alewife'],
  :green => ['green_haymarket', 'government center', 'park st', 'bolyston', 'arlington', 'copley'],
  :orange => ['north station', 'orange_haymarket', 'park st', 'state', 'downtown crossing', 'chinatown', 'back bay', 'forest hills']}


puts "Welcome, please enter the name of the station you will be departing from: "
print "Departing from: "
origin_station = gets.chomp # origin_station will be a string value within an array, we need to know its index position?
puts "Which subway line is the station on?"
print "Subway line: "
origin_line = gets.chomp #origin_line will be a symbol, a key of a hash, with a value of an array
puts "Please enter the station you are going to."
print "Arriving at: "
destination_station = gets.chomp # destination_station will be a string value within an array, we need to know its index position?
puts "Which subway line is the station on?"
print "Subway line: "
destination_line = gets.chomp
# will you be changing at park st?
# index of park st
changing_point = subway["#{origin_line}".to_sym].index("park st")
arrival_point = subway["#{destination_line}".to_sym].index("#{destination_station}")
departure_point = subway["#{origin_line}".to_sym].index("#{origin_station}")
same_line_arrival_point = subway["#{destination_line}".to_sym].index("#{destination_station}")
puts changing_point + arrival_point - 1 if "#{origin_line}" != "#{destination_line}"
puts same_line_arrival_point - departure_point if "#{origin_line}" == "#{destination_line}"

=begin
puts subway["#{origin_line}".to_sym][(subway["#{origin_line}".to_sym].index("#{origin_station}")).to_i,8)
subway["#{destination_line}".to_sym].index("park st")
puts subway["#{destination_line}".to_sym].index("#{destination_station}")

origin_line = :red
array index begins at 0, so maybe it doesn't matter we have dup park st?
puts subway[:red].uniq + subway[:orange].uniq
index position of one stop calculate to index position of the other stop? what about  when it's backwards?
array.reject {|x| x < 3}
=end
