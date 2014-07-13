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
		raise "Airport is full" if full?
		planes << plane
	end

	def reject(plane)
		planes.pop
	end

	def full?
		plane_count == @capacity
	end

	# def change_airplane_status
	# 	self.planes.each do |airplane|
	# 		airplane.stop_flying
	# 	end
	# end

end
