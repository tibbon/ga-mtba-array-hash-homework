#The key in each hash is the stop on the MBTA line
#The value for each key is the number of stops you visit to get from the MBTA stop specified in the key to park street
#VARS Initial_Stop ; Initial_Line ; Final_Stop ; Final_Line
#Input
puts "Enter Initial Stop: "
Initial_Stop = gets.chomp.to_sym

puts "Enter Initial Line: "
Initial_Line = gets.chomp.to_sym

puts "Enter Final Stop: "
Final_Stop = gets.chomp.to_sym

puts "Enter Final Line: "
Final_Line = gets.chomp.to_sym

#Computation


#This Conditional Statement will evaluate which MBTA Line Hash to look at

Mbta_Lines = {

	green = {
	    haymarket: 2,
	    government_center: 1,
	    park: 0,
	    bolyston: 1,
	    arlington: 2,
	    copley: 3,
	},

	red = {
	    south_station: 1,
	    park: 0,
	    kendall: 1,
	    central: 2,
	    harvard: 3,
	    porter: 4,
	    davis: 5,
	    alewife: 6,
	},

	orange = {
	    north_station: 2,
	    haymarket: 1,
	    park: 0,
	    downtown_crossing: 1,
	    chinatown: 2,
	    back_bay: 3,
	    forest_hills: 4,
	},

}
#distance_a will be the first leg of the trip; distance_b will be the second leg of the trip
distance_a = Mbta_Lines[:Initial_Line][:Initial_Stop]
distance_b = Mbta_Lines[:Final_Line][:Final_Stop]
#T_lines = [Green_Line, Red_Line, Orange_Line]
#I will use the distance method to calculate the number of stops each trip will take

def distance(point_a , point_b)
	return point_a + point_b + 1
end

Number_of_Stops = distance(distance_a, distance_b)


#output


Puts "Your total number of stops will be #{Number_of_Stops}"
