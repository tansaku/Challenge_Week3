require 'airport'

describe Airport do

DEFAULT_CAPACITY = 50

let(:airport) 		{ Airport.new(:capacity => 50)	} 					
let(:landing_plane) { double(:plane, flying?: true)	}
let(:takeoff_plane) { double(:plane, flying?: false)}

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
		50.times{airport.accept(landing_plane)}
		expect(airport).to be_full
	end

end