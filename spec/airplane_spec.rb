require "airplane"
require "airport"

describe Airplane do

  let(:flying_airplane)  { Airplane.new                           }
  let(:landed_airplane)  { Airplane.new.landed                    }
  let(:airport)          { double(:airport)                       }
  let(:bad_weather)      { double(:weather, flyable?: false)      }
  let(:good_weather)     { double(:weather, flyable?: true)       }

  it 'has a flying status when created' do
      flying_airplane
      expect(flying_airplane).to be_flying
  end
    
  it 'should be able to not have a flying status' do
      flying_airplane.landed
      expect(flying_airplane).not_to be_flying
  end

  it 'should land' do
      flying_airplane.landed
      expect(flying_airplane.flying?).to be false
  end

  it 'should take off' do
      landed_airplane.take_off
      expect(landed_airplane.flying?).to be true
  end

  it 'should not land in bad_weather' do
      bad_weather
      flying_airplane.landed
      expect(airport).not_to be_free_for_landing
      expect
  end


  # it 'airplane status should change to landed when on ground' do
  #     airport.accept(flying_airplane)
  #     flying_airplane.landed
  #     expect(flying_airplane.flying?).to eq false 
  # end

  # it 'should change status to flying when its taken off' do
  #     landed_airplane
  # end

end

