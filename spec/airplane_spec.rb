require "airplane"

describe Airplane do

  let(:airplane) { Airplane.new }

  it 'has a flying status when created' do
      airplane
      expect(airplane).to be_flying
  end
    
  it 'should be able to not have a flying status' do
      airplane
      airplane.stop_flying
      expect(airplane).not_to be_flying
  end

end

