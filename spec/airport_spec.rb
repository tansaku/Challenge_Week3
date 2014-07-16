require 'airport'
require 'airplane'


describe Airport do

	let(:airport) 		    	{ Airport.new(:capacity => 50)		} 					
	let(:landing_plane) 	 { double(:plane, flying?: true)		}
	let(:takeoff_plane)		 { double(:plane, flying?: false)	}

	def fill_airport(airport)
		50.times { airport.accept(Airplane.new)}
	end

	context 'Taking off and landing' do

		it 'should have no airplanes when created' do
			expect(airport.plane_count).to eq 0
		end

		it 'should accept an airplane' do
			expect(airport).to receive(:weather_condition).and_return(:sunny)
			expect(airport.plane_count).to eq(0)
			airport.accept(landing_plane)
			expect(airport.plane_count).to eq(1)
		end	
	
		it 'should release a plane for takeoff' do
			airport.reject(landing_plane)
			expect(airport.plane_count).to eq(0)
		end

		it 'should know when the airport is full' do
			allow(airport).to receive(:weather_condition).and_return(:sunny)
			expect(airport).not_to be_full
			fill_airport(airport)
			expect(airport).to be_full
		end

		it 'should not accept an airplane when the airport is full' do
			allow(airport).to receive(:weather_condition).and_return(:sunny)
			fill_airport(airport)
			expect(lambda { airport.accept(landing_plane)}).to raise_error(RuntimeError)	
		end

		it 'should not allow landing in bad_weather' do
      expect(airport).to receive(:weather_condition).and_return(:stormy)

      # 1. what is the method name
      # 2. what are the arguments (if any)
      # 3. what is the return value (if any) <-- query
      # 4. what is the state change (if any) <-- command
      airport.accept(landing_plane)
      expect(airport.plane_count).to eq(0)
    end

	end

end