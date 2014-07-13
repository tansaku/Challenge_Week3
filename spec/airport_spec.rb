require 'airport'
require 'airplane'


describe Airport do

DEFAULT_CAPACITY = 50

	let(:airport) 		{ Airport.new(:capacity => 50)		} 					
	let(:landing_plane) { double(:plane, flying?: true)		}
	let(:takeoff_plane) { double(:plane, flying?: false)	}

	def fill_airport(airport)
		50.times { airport.accept(Airplane.new)}
	end

	context 'Taking off and landing' do

		it 'should have no airplanes when created' do
			airport
			expect(airport.plane_count).to eq 0
		end

		it 'should accept an airplane' do
			airport
			landing_plane
			expect(airport.plane_count).to eq(0)
			airport.accept(landing_plane)
			expect(airport.plane_count).to eq(1)
		end	
	
		it 'should release a plane for takeoff' do
			airport
			landing_plane
			airport.reject(landing_plane)
			expect(airport.plane_count).to eq(0)
		end

		it 'should know when the airport is full' do
			expect(airport).not_to be_full
			fill_airport(airport)
			expect(airport).to be_full
		end

		it 'should not accept an airplane when the airport is full' do
			fill_airport(airport)
			expect(lambda { airport.accept(landing_plane)}).to raise_error(RuntimeError)	
		end

	end

end