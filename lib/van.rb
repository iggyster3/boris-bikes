class Van

  DEFAULT_CAPACITY = 5

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  # def bike_count
  # 	@bike_count
  # end

  def spot(bike)
    raise "Van is full" if full?
    @bikes << bike
  end

  def full?
    @bikes.count == @capacity
  end

  def release(bike)
    @bikes.delete(bike)
  end

end
