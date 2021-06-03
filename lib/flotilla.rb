class Flotilla
  attr_reader :name,
              :personnel,
              :ships

  def initialize(data_hash)
    @name      = data_hash[:designation]
    @personnel = []
    @ships     = []
  end
end
