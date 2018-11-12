#Always 3 ruby script

#puts "Tell to me the integer.  *beep boop*"

#initial = gets.to_i

#puts "*beep boop*\nThe number is always " + ((((initial+5)*2)-4)/2-initial).to_s

#def always_three
#	puts "Tell to me the integer.  *beep boop*"
#	three = gets.to_i
#	three = ((((three+5)*2)-4)/2 - three).to_s

#puts "*beep boop*\n\nThe number is always " + three + "\n\n*beep boop*\n\n"
#end

#always_three 

#method
def always_three (number)
	((((number+5)*2)-4)/2 - number).to_i
end

#ask the user to provide a numer
puts "Tell to me the integer.  *beep boop*"

#convert the user's response to an integer
#set that integer to a variable
number = gets.to_i

#insert the user's response into the method
puts "*beep boop*\n\nThe number is always " + always_three(number).to_s + "\n\n*beep boop*\n\n"


