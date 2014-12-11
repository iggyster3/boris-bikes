require 'docking_station'

describe DockingStation do

  let(:station) { DockingStation.new(:capacity => 123) }

  it "should allow setting default capacity on initialising" do
    expect(station.capacity).to eq(123)
  end

  it "should know when it is empty" do
    station
    station.empty?
    expect(station.bike_count).to eq(0)
  end

end
