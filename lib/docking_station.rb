require_relative 'bike_container'

class DockingStation

  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
    #@bikes = []
    self.bikes
  end

  def take_available_bikes(van)
    van.available_bikes.each do |bike|
    bikes << van.release(bike)
    end
  end
end
