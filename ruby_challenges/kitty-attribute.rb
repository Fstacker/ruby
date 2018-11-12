class Animal
	
	attr_accessor :name, :breed, :owner_name
	#attr_writer :name, :breed, :owner_name
	#attr_reader :name, :breed, :owner_name
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
my_kitty.name = "Lilly"
my_kitty.breed = "American Domestic Shorthair"
kittyname = my_kitty.name
kittybreed = my_kitty.breed

my_doggy = Doggy.new
my_doggy.name = "Flash"
my_doggy.breed = "Basset Hound"
doggyname = my_doggy.name
doggybreed = my_doggy.breed

puts "#{kittyname} is an #{my_kitty.breed}, says #{my_kitty.sound_kitty_makes},
and #{doggyname} is a #{doggybreed}, and says #{my_doggy.doggy_sound}."

puts my_kitty.inspect
puts my_doggy.inspect

