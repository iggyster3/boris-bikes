require 'van'

describe Van do

  let(:bike) { Bike.new }
  let(:van) { Van.new }
  let(:station) { DockingStation.new }


  def fill_van(van)
    10.times {van.dock(Bike.new)}
  end

  it "should only accept a broken bike from the docking station" do
    station = DockingStation.new
    bike.break!
    expect(bike).to be_broken
  end

  it "should know when it's full" do
    fill_van(van)
    expect(lambda{ van.spot(bike)}).to raise_error(RuntimeError,'Van is full')
  end

  it "should transfer all bikes to docking station" do
    10.times { van.dock(Bike.new) }
    station.take_available_bikes(van)
    expect(station.bike_count).to eq(10)
    expect(van.bike_count).to eq(0)
  end

end
