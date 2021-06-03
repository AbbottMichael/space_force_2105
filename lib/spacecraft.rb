class Spacecraft
  attr_reader :name,
              :fuel,
              :requirements

  def initialize(data_hash)
    @name = data_hash[:name]
    @fuel = data_hash[:fuel]
    @requirements = []
  end

  def add_requirement(data_hash)
    @requirements << data_hash
  end
end
