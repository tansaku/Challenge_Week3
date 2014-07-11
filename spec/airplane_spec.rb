require "airplane"

describe Airplane do

  let(:airplane)  { Airplane.new    }
  let(:airport)   { double(:airport)}

  it 'has a flying status when created' do
      airplane
      expect(airplane).to be_flying
  end
    
  it 'should be able to not have a flying status' do
      airplane
      airplane.stop_flying
      expect(airplane).not_to be_flying
  end

  # it 'should have a flying status when not in airport' do
  #     airplane
  #     airport
  #     airport.accept(airplane)
  #     airport.reject(airplane)
  #     expect(airplane.flying?).to eq true 
  # end

end

