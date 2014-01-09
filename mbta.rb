mbta_system = {
  orange: ['Forest Hills', 'Back Bay', 'Chinatown', 'Downtown Crossing', 'State', 'Park St', 'Haymarket Orange', 'North Station']
  red: ['South Station', 'Park St', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife']
  green: ['Haymarket Green', 'Government Center', 'Park St', 'Boylston', 'Arlington', 'Copley']
}

def get_input(prompt)
  puts prompt
  gets.chomp
end

input_origin_line = get_input("Enter the T line of the stop at which you will be boarding the subway:")
input_origin_stop = get_input("Enter the stop at which you will be boarding the subway:")

input_destination_line = get_input ("Enter the T line of the stop at which you will be getting off:")
input_destination_stop = get_input ("Enter the stop at which you will be getting off:")
