require 'airport'

describe Airport do

let(:airport) 		{ Airport.new }
let(:landing_plane) { double(:plane, flying?: true)}
let(:takeoff_plane) { double(:plane, flying?: false)}

	it 'should accept an airplane' do
		airport

	end	
	
end