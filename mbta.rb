# for any "prompt", return the user's input
def get_input(prompt)
	puts prompt
	gets.chomp # becomes returned value
end

start_line = get_input("What line are you starting on? (red, orange, green)")
start_station = get_input("What station are you starting at?\n(red line: alewife, davis, porter, harvard, central, kendall, park st, south station)\n(orange line: north station, haymarket, park st, downtown crossing, chinatown, back bay, forest hills)\n(green line: haymarket, gov't center, park st, boylston, arlington, copley)")
end_line = get_input("What line are you going to? (red, orange, green)")
end_station = get_input("What station are you going to?\n(red line: alewife, davis, porter, harvard, central, kendall, park st, south station)\n(orange line: north station, haymarket, park st, downtown crossing, chinatown, back bay, forest hills)\n(green line: haymarket, gov't center, park st, boylston, arlington, copley)")

