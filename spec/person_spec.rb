require './lib/person'

RSpec.describe Person do

  before :each do
    @kathy = Person.new('Kathy Chan', 10)
  end

  describe 'instantiation' do
    
    it 'exists' do
      expect(@kathy).to be_a(Person)
    end
  end
end
