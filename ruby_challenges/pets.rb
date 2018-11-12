class Pet 
	def set_name=(name)
		@name = name 
	end

	def get_name
		return @name
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end
end

class Ferret < Pet
 
	def squeal
		return "squeeeeee"
	end
 
end

class Chinchilla < Pet
 
	def squeek
		return "eeeep"
	end
 
end

class Parrot < Pet

	def tweet
		return "chirp chirp"
	end
 
end


my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferretname = my_ferret.get_name

my_chinchilla = Chinchilla.new
my_chinchilla.set_name= "Dali"
chinchillaname = my_chinchilla.get_name

my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrotname = my_parrot.get_name
 
puts "#{chinchillaname} says #{my_chinchilla.squeek},\n#{ferretname} says #{my_ferret.squeal},\nand #{parrotname} says #{my_parrot.tweet}."

puts my_ferret.inspect
puts my_chinchilla.inspect
puts my_parrot.inspect
