class Airplane

	def initialize
		@flyable = true
	end

	def flyable? 
		@flyable
	end

	def make_unflyable
		@flyable = false
	end

end