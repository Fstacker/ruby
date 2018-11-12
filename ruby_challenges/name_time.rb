#method for getting user name
def get_name
	puts "By what arrangement of symbols manipulated into sounds do they call you?\n*beep boop*"
	name = gets
end

#method for determining current time
def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end
 
#method for determining greeting and getting the user to submit name
def greeting
	name = get_name

	#call method for determining the hour of the day
	current_hour = determine_current_hour

	#if-then method for assigning a greeting based on the hour of the day
	if(current_hour >=3 && current_hour <= 12) then time = "morning"
		elsif(current_hour > 12 && current_hour <=18) then time = "afternoon"
		elsif(current_hour > 18 || current_hour < 3) then time = "evening"
	end
	puts "Good #{time}, #{name.capitalize}!"
end

greeting