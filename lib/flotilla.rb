class Flotilla
  attr_reader :name,
              :personnel,
              :ships

  def initialize(data_hash)
    @name      = data_hash[:designation]
    @personnel = []
    @ships     = []
  end

  def add_ship(spacecraft)
    @ships << spacecraft
  end

  def add_personnel(person)
    @personnel << person
  end
end
