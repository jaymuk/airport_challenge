require 'airport'

## Note these are just some guidelines!
## Feel free to write more tests!!

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport
# and how that is implemented.
#
# If the airport is full then no planes can land

describe Airport do
  let(:airport) { Airport.new }
  context 'taking off and landing' do

    it 'a plane can be landed' do
      expect(airport).to respond_to :land
    end

    it 'can store landed planes in hangar' do
      airport.land double :plane
      expect(airport.hangar).to eq :plane
    end

    it 'a plane can take off' do
      expect(airport).to respond_to :take_off
    end

    xit 'can have a max capacity' do
      default_cap = 10
      expect(airport.capacity(default_cap)).to eq default_cap
    end

  end

  context 'traffic control' do

    it 'can '


    xit 'a plane cannot land if the airport is full' do
      default_cap = 10
      airport.land
      expect(subject.land).to raise "Airport is full"
    end

    # Include a weather condition.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy,
    # the plane can not take off and must remain in the airport.
    #
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    context 'weather conditions' do
      xit 'a plane cannot take off when there is a storm brewing'

      xit 'a plane cannot land in the middle of a storm'
    end
  end
end
