class Van
	def initialize(wheels, name)
	 @wheels = wheels
	 @name = name
	end
	attr_reader :wheels
	attr_reader :name


	def self.large
		new(8, "Large")
	end

	def self.medium
		new(6, "Medium")
	end

	def self.standard
		new(4, "Standard")
	end

end


l_van = Van.large

m_van = Van.medium

van = Van.standard

p l_van

p m_van

p van