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

    before :each do
      @daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
      @daedalus.add_requirement({astrophysics: 6})
      @daedalus.add_requirement({quantum_mechanics: 3})
      @kathy = Person.new('Kathy Chan', 10)
      @kathy.add_specialty(:astrophysics)
      @kathy.add_specialty(:quantum_mechanics)
      @polly = Person.new('Polly Parker', 4)
      @polly.add_specialty(:operations)
      @polly.add_specialty(:maintenance)
      @rover = Person.new('Rover Henriette', 1)
      @polly.add_specialty(:operations)
      @polly.add_specialty(:maintenance)
      @sampson = Person.new('Sampson Edwards', 7)
      @polly.add_specialty(:astrophysics)
      @polly.add_specialty(:quantum_mechanics)
    end

    it 'adds ship' do
      expect(@seventh_flotilla.add_ship(@daedalus)).to eq([@daedalus])
    end

    it 'adds personnel' do
      @seventh_flotilla.add_personnel(@kathy)
      @seventh_flotilla.add_personnel(@polly)
      @seventh_flotilla.add_personnel(@rover)
      @seventh_flotilla.add_personnel(@sampson)

      expect(@seventh_flotilla.personnel).to eq([@kathy, @polly, @rover, @sampson])
    end

    it 'recommends personnel' do
      @seventh_flotilla.add_personnel(@kathy)
      @seventh_flotilla.add_personnel(@polly)
      @seventh_flotilla.add_personnel(@rover)
      @seventh_flotilla.add_personnel(@sampson)

      expect(@seventh_flotilla.recommend_personnel(@daedalus)).to eq([@kathy, @sampson])
    end
  end
end
