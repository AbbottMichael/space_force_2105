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

  def recommend_personnel(ship)
    require'pry';binding.pry
  #   specialty_list = []
  #   ships.each do |ship|
  #     ship.requirements.each do |specialty|
  #       specialty_list << specialty
  #     end
  #   end
  #   specialty_list2 = []
  #   ships.each do |ship|
  end
end
