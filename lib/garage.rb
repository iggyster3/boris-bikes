class Garage

  def initialize
    @bikes = []
  end

  def release(bike)
  end

  def bike
    @bike
  end

  def bikes_count
    @bikes.length
  end

  def accept_bikes_from_van(van)
    @bikes = van.bikes
  end
end
