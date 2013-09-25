#The key in each hash is the stop on the MBTA line
#The value for each key is the number of stops you visit to get from the MBTA stop specified in the key to park street
#VARS Initial_Stop ; Initial_Line ; Final_Stop ; Final_Line
Green_Line = {
    "Haymarket" => 2,
    "Government Center" => 1,
    "Park"=> 0,
    "Bolyston"=> 1,
    "Arlington"=> 2,
    "Copley"=> 3,
}

Red_Line = {
    "South Station" => 1,
    "Park" => 0,
    "Kendall"=> 1,
    "Central"=> 2,
    "Harvard"=> 3,
    "Porter"=> 4,
    "Davis" => 5,
    "Alewife" => 6,
}

Orange_Line = {
    "North Station" => 2,
    "Haymarket" => 1,
    "Park"=> 0,
    "Downtown Crossing"=> 1,
    "Chinatown"=> 2,
    "Back Bay"=> 3,
    "Forest Hills"=> 4,
}

Stop_num = firsti
#T_lines = [Green_Line, Red_Line, Orange_Line]