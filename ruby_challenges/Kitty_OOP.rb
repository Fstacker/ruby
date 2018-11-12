class Animal
	def set_name=(name)
		@name = name
	end

	def get_name
		return @name
	end

	def set_breed(breed)
		@breed = breed
	end

	def get_breed
		return @breed
	end

	def set_owner(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end

end 

class Kitty < Animal

	def sound_kitty_makes
		return "meow"
	end

end

class Doggy < Animal

	def doggy_sound
		return "ruff"
	end

end

my_kitty = Kitty.new
my_kitty.set_name= "Lilly"
kittyname= my_kitty.get_name

my_doggy = Doggy.new
my_doggy.set_name= "Flash"
doggyname= my_doggy.get_name

puts "#{kittyname} says #{my_kitty.sound_kitty_makes},
and #{doggyname} says #{my_doggy.doggy_sound}."

puts my_kitty.inspect
puts my_doggy.inspect

