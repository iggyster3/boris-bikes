require_relative 'bike_container'


class Bike

  include BikeContainer

  def initialize
    fix!
  end

  def broken?
    @broken
  end

  def break!
    @broken = true
  end

  def fix!
    @broken = false
  end

end
