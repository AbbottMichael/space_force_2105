require './lib/spacecraft'

RSpec.describe Spacecraft do
  describe 'instantiation' do
    it 'exists' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus).to be_a(Spacecraft)
    end

    it 'has readable attributes' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(deadalus.name).to eq('Daedalus')
      expect(deadalus.fuel).to eq(400)
    end
  end
end
