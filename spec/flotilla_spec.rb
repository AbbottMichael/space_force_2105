require './lib/person'
require './lib/spacecraft'
require './lib/flotilla'

RSpec.describe Flotilla do

  before :each do
    @seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
  end

  describe 'instantiation' do

    it 'exists' do
      expect(@seventh_flotilla).to be_a(Flotilla)
    end

    it 'has readable attributes' do
      expect(@seventh_flotilla.name).to eq('Seventh Flotilla')
      expect(@seventh_flotilla.personnel).to eq([])
      expect(@seventh_flotilla.ships).to eq([])
    end
  end

  describe 'method' do

    it 'adds ship' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(@seventh_flotilla.add_ship(daedalus)).to eq([daedalus])
    end

    it 'adds personnel' do
      kathy = Person.new('Kathy Chan', 10)
      polly = Person.new('Polly Parker', 4)
      rover = Person.new('Rover Henriette', 1)
      sampson = Person.new('Sampson Edwards', 7)
      @seventh_flotilla.add_personnel(kathy)
      @seventh_flotilla.add_personnel(polly)
      @seventh_flotilla.add_personnel(rover)
      @seventh_flotilla.add_personnel(sampson)

      expect(@seventh_flotilla.personnel).to eq([kathy, polly, rover, sampson])
    end
  end
end
