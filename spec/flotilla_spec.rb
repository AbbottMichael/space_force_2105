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
end
