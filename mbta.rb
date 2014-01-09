# Created a hash that represents each subway line and their stops
mbta_system = {
  orange: ['Forest Hills', 'Back Bay', 'Chinatown', 'Downtown Crossing', 'State', 'Park St', 'Haymarket Orange', 'North Station'],
  red: ['South Station', 'Park St', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
  green: ['Haymarket Green', 'Government Center', 'Park St', 'Boylston', 'Arlington', 'Copley']
}
# Defined a method to prompt the user for input
def get_input(prompt)
  puts prompt
  gets.chomp
end

# Created variables to capture the user's input
input_origin_line = get_input("Enter the T line of the stop at which you will be boarding the subway:")
input_origin_stop = get_input("Enter the stop at which you will be boarding the subway:")

input_destination_line = get_input ("Enter the T line of the stop at which you will be getting off:")
input_destination_stop = get_input ("Enter the stop at which you will be getting off:")

# Created variables to capture the index of the user-inputted subway stops in each of the subway line arrays
orange_origin_stop_index = mbta_system[:orange].index(input_origin_stop)
red_origin_stop_index = mbta_system[:red].index(input_origin_stop)
green_origin_stop_index = mbta_system[:green].index(input_origin_stop)

orange_destination_stop_index = mbta_system[:orange].index(input_destination_stop)
red_destination_stop_index = mbta_system[:red].index(input_destination_stop)
green_destination_stop_index = mbta_system[:green].index(input_destination_stop)

# Created a conditional to calculate the number of stops on the user's trip
if input_origin_line == "Orange" && input_destination_line == "Orange"
  puts (orange_origin_stop_index - orange_destination_stop_index).abs
elsif input_origin_line == "Orange" && input_destination_line == "Red"
  puts (orange_origin_stop_index - 5).abs + (red_destination_stop_index - 1).abs
elsif input_origin_line == "Orange" && input_destination_line == "Green"
  puts (orange_origin_stop_index - 5).abs + (green_destination_stop_index - 2).abs
elsif input_origin_line == "Red" && input_destination_line == "Red"
  puts (red_origin_stop_index - red_destination_stop_index).abs
elsif input_origin_line == "Red" && input_destination_line == "Orange"
  puts (red_origin_stop_index - 1).abs + (orange_destination_stop_index - 5).abs
elsif input_origin_line == "Red" && input_destination_line == "Green"
  puts (red_origin_stop_index - 1).abs + (green_destination_stop_index - 2).abs
elsif input_origin_line == "Green" && input_destination_line == "Green"
  puts (green_origin_stop_index - green_destination_stop_index).abs
elsif input_origin_line == "Green" && input_destination_line == "Orange"
  puts (green_origin_stop_index - 2).abs + (orange_destination_stop_index - 5).abs
elsif input_origin_line == "Green" && input_destination_line == "Red"
  puts (green_origin_stop_index - 2).abs + (red_destination_stop_index - 1).abs
end

