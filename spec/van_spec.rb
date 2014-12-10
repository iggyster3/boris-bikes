require 'van'

describe Van do

  def fill_van(van)
    5.times {van.spot(Bike.new)}
  end

  it "should only accept a broken bike from the docking station" do
    bike = Bike.new
    station = DockingStation.new
    bike.break!
    expect(bike).to be_broken
  end

  it "should know when it's full" do
    van = Van.new
    bike = Bike.new
    fill_van(van)
    expect(lambda{ van.spot(bike)}).to raise_error(RuntimeError,'Van is full')
  end
end
