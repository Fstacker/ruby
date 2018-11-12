class Eagles
	def set_name=(band_name)
		@name = band_name
	end

	def get_name
		return @name
	end

	def set_genre=(genre)
		@genre = genre
	end

	def get_genre
		return @genre
	end

	def set_favorite
		@favorite = set_favorite
	end

	def get_favorite
		return @favorite
	end

end

class Soundgarden
	def set_name=(band_name)
		@name = band_name
	end

	def get_name
		return @name
	end

	def set_genre=(genre)
		@genre = genre
	end

	def get_genre
		return @genre
	end

	def set_best_song=(best_song)
		@song = best_song
	end

	def get_best_song
		return @song
	end

end

my_band = Eagles.new