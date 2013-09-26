# Method to determine if the trip is on one line or multiple. 

puts "Start line?"
startline = gets.chomp

puts "End line?"
endline = gets.chomp

def sameline (x, y)
	if x == y
		return true
	else
		return false
	end
end

if sameline(startline, endline) == true
	puts "yay!"
else
	puts "boo!"
end