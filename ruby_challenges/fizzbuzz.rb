integer = 0
while integer <= 100
	if integer%5 ==0 and integer%3 == 0
		puts "FizzBuzz"
	elsif integer%3 == 0
		puts "Fizz"
	elsif integer%5 == 0
		puts "Buzz"
	else puts integer
	end
	integer += 1			
end