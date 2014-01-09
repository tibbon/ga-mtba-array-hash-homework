
  def get_input(prompt)
    puts prompt
    gets.chomp
  end


subway = {
  :red => ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
  :green => ['Haymarket', 'Government center', 'Park Street', 'Bolyston', 'Arlington', 'Copley'],
  :orange => ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back bay', 'Forest Hills']}

# origin_station will be a string value within an array, we need to know its index position?
origin_station = get_input("Welcome, please enter the name of the station you will be departing from: ")
#origin_line will be a symbol, a key of a hash, with a value of an array
origin_line = get_input("Which subway line is the station on?")
# destination_station will be a string value within an array, we need to know its index position?
destination_station = get_input("Please enter the station you are going to: ")
destination_line = get_input("Which subway line is the station on?")

# will you be changing at park st?
# index of park st
# array index begins at 0, so maybe it doesn't matter we have dup park st?
changing_point = subway["#{origin_line}".to_sym].index("park st")
arrival_point = subway["#{destination_line}".to_sym].index("#{destination_station}")
departure_point = subway["#{origin_line}".to_sym].index("#{origin_station}")
same_line_arrival_point = subway["#{destination_line}".to_sym].index("#{destination_station}")
puts (changing_point - arrival_point).abs - 1 if "#{origin_line}" != "#{destination_line}"
puts (same_line_arrival_point - departure_point).abs if "#{origin_line}" == "#{destination_line}"


=begin
how to get absolute number?
origin_line = :red
index position of one stop calculate to index position of the other stop? what about when it's backwards?

=end
