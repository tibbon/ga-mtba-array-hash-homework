# for any "prompt", return the user's input
def get_input(prompt)
	puts prompt
	gets.chomp # becomes returned value
end

red_line = ["alewife", "davis", "porter", "harvard", "central", "kendall", "park st", "south station"]
orange_line = ["north station", "haymarket", "park st", "downtown crossing", "chinatown", "back bay", "forest hills"]
green_line = ["haymarket", "gov't center", "park st", "boylston", "arlington", "copley"]


start_line = get_input("What line are you starting on? (red, orange, green)")
start_station = get_input("What station are you starting at?\n(red line: #{red_line.join(", ")})\n(orange line: #{orange_line.join(", ")})\n(green line: #{green_line.join(", ")})")
end_line = get_input("What line are you going to? (red, orange, green)")
end_station = get_input("What station are you getting off at?\n(red line: #{red_line.join(", ")})\n(orange line: #{orange_line.join(", ")})\n(green line: #{green_line.join(", ")})")

# GOAL: PRINT TOTAL NUMBER OF STOPS FOR EACH TRIP

