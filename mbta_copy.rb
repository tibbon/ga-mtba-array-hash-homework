#I decided to create a hash of subway lines that contain the line as the key and the stops in array as values

subway_lines = {
		red => ['south station',
					'park street',
					'kendall',
					'central',
					'harvard',
					'porter',
					'davis',
					'alewife'],

		green => ['haymarket',
					'government center',
					'park street', 
					'boylston',
					'arlington',
					'copley'],
		
		orange => ['north station',
					'haymarket',
					'park street',
					'state',
					'downtown crossing',
					'chinatown',
					'back bay',
					'forest hills']				
				}

###The following is my attempt in understanding hashes
#To store all the reserve coffees we have in the database, we want to create 
# a hash that stores the type of coffee as a string in the
# key and its description in the value
require 'pry'

