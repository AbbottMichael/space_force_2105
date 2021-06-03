class Spacecraft
  attr_reader :name, :fuel
  
  def initialize(data_hash)
    @name = data_hash[:name]
    @fuel = data_hash[:fuel]
  end
end
