require 'pry'



red = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis"]

# Inputs


def subway(geton, getoff)
	trip_length = (geton - getoff).abs
	return trip_length
end

trip_length = subway(1, 3)
puts trip_length

trip_length = subway(6, 2)
puts trip_length