class Airplane

	def initialize
		@flying = true
	end

	def flying? 
		@flying
	end

	def landed
		@flying = false
		self
	end

	def take_off
		@flying = true
		self
	end

	def free_for_landing?
	end

end