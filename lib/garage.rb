require_relative 'bike_container'

class Garage

  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def accept_bikes_from_van(van)
    van.bikes.reverse.each do |bike|
      self.dock(bike)
      van.release(bike)
    end
  end

  def fixes_all_bikes
    bikes.each {|bike|bike.fix!}
  end
end
