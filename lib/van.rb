require_relative 'bike_container'

class Van

  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

  alias_method :spot, :dock

  def take_available_bikes(garage)
    garage.available_bikes.each do |bike|
    bikes << garage.release(bike)
    end
  end

end
