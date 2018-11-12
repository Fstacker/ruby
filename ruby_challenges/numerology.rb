#puts "Tell me your your birthday.  Use the following format: MMDDYYYY  *beep boop*"
#bday = gets

#number = bday[0].to_i + bday[1].to_i + bday[2].to_i + bday[3].to_i + bday[4].to_i + bday[5].to_i + bday[6].to_i + bday[7].to_i

#number = number.to_s

#number = number[0].to_i + number[1].to_i

#if number > 9
#	number[0].to_i + number[1].to_i
#end

#case number
#	when 1
#		puts "Your numerology number is #{number}.  *beep boop*\nOne is the leader.  The number one indicates the ability to stand alone and is a strong vibration.  Ruled by the Sun."
#	when 2
#		puts "Your numerology number is #{number}.  *beep boop*\nThis is the mediator and peace-lover.  The number two indicates the desire for harmony.  It is a gentle, considerate, and sensitive vibration.  Ruled by the Moon. *beep boop*"
#	when 3
#		puts "Your numerology number is #{number}.  *beep boop*\nNumber three is a sociable, friendly, and outgoing vibration.  Kind, positive, and optimistic.  Threes enjoy life and have a good sense of humor.  Ruled by Jupiter.  *beep boop*"
#	when 4
#		puts "Your numerology number is #{number}.  *beep boop*\nThis is the worker.  Practical, with a love of detail.  Fours are trustworthy, hardworking, and helpful.  Ruled by Uranus.  *beep boop*"
#	when 5
#		puts "Your numerology number is #{number}.  *beep boop*\nThis is the freedom lover.  The number five is an intellectual vibration.  These are 'idea' people with a love of variety and the ability to adapt to most situations.  Ruled by Mercury.  *beep boop*"
#	when 6
#		puts "Your numerology number is #{number}.  *beep boop*\nThis is the peace lover.  The number six is a loving, stable, and harmonious vibration.  Ruled by Venus.  *beep boop*"
#	when 7
#		puts "Your numerology number is #{number}.  *beep boop*\nThis is the deep thinker.  The number seven is a spiritual vibration.  These people are not very attached to material things, are introspective, and generally quiet.  Ruled by Neptune.  *beep boop*"
#	when 8
#		puts "Your numerology number is #{number}.  *beep boop*\nThis is the manager.  Number eight is strong, successful, and material vibration.  Ruled by Saturn.  *beep boop*"
#	when 9
#		puts "Your numerology number is #{number}.  *beep boop*\nThis is the teacher.  Number nine is a tolerant, somewhat impractical, and sympathetic vibration.  Ruled by Mars.  *beep boop*"
#end




#create method to determine the birth path
def get_birth_path_num(birthdate)
	number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

	number = number.to_s
	number = number[0].to_i + number[1].to_i

	if number > 9
		number = number.to_s
		number = number[0].to_i + number[1].to_i
	end

	return number
end

#4 the message is the return value
def get_message(birth_path_num)
	#case statement displays the correct meaning
	case birth_path_num
		when 1
			message = "Your numerology number is #{birth_path_num}.  *beep boop*\n\nOne is the leader.  The number one indicates the ability to stand alone and is a strong vibration.  Ruled by the Sun."
		when 2
			message = "Your numerology number is #{birth_path_num}.  *beep boop*\n\nThis is the mediator and peace-lover.  The number two indicates the desire for harmony.  It is a gentle, considerate, and sensitive vibration.  Ruled by the Moon. *beep boop*"
		when 3
			message = "Your numerology number is #{birth_path_num}.  *beep boop*\n\nNumber three is a sociable, friendly, and outgoing vibration.  Kind, positive, and optimistic.  Threes enjoy life and have a good sense of humor.  Ruled by Jupiter.  *beep boop*"
		when 4
			message = "Your numerology number is #{birth_path_num}.  *beep boop*\n\nThis is the worker.  Practical, with a love of detail.  Fours are trustworthy, hardworking, and helpful.  Ruled by Uranus.  *beep boop*"
		when 5
			message = "Your numerology number is #{birth_path_num}.  *beep boop*\n\nThis is the freedom lover.  The number five is an intellectual vibration.  These are 'idea' people with a love of variety and the ability to adapt to most situations.  Ruled by Mercury.  *beep boop*"
		when 6
			message = "Your numerology number is #{birth_path_num}.  *beep boop*\n\nThis is the peace lover.  The number six is a loving, stable, and harmonious vibration.  Ruled by Venus.  *beep boop*"
		when 7
			message = "Your numerology number is #{birth_path_num}.  *beep boop*\n\nThis is the deep thinker.  The number seven is a spiritual vibration.  These people are not very attached to material things, are introspective, and generally quiet.  Ruled by Neptune.  *beep boop*"
		when 8
			message = "Your numerology number is #{birth_path_num}.  *beep boop*\n\nThis is the manager.  Number eight is strong, successful, and material vibration.  Ruled by Saturn.  *beep boop*"
		when 9
			message = "Your numerology number is #{birth_path_num}.  *beep boop*\n\nThis is the teacher.  Number nine is a tolerant, somewhat impractical, and sympathetic vibration.  Ruled by Mars.  *beep boop*"
		else
			message = "Ruh roh!  Your birth path number is not 1 through 9!\n*beep boop*"
	end
end

#get the user's date of birth and assign to a variable
	puts "Reveal the day of your birth.  Use the following format: MMDDYYYY  *beep boop*\n"
	bday = gets

#get the birth path number using the method & assign to a variable
birth_path_num = get_birth_path_num(bday)

#get the corresponding birth path message using the method and assign to a variable
message = get_message(birth_path_num)

#display the message
puts message
