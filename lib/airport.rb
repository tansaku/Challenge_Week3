class Airport

	def initialize(options = {})    
  		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  		@planes = []
	end

	def planes
		@planes ||= []
	end

	def plane_count
		planes.count
	end

	def accept(plane)
		planes << plane
	end

	def reject(plane)
		planes.pop
	end

	def full?
		plane_count == @capacity
	end

end
