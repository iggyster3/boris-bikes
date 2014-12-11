require 'garage'

describe Garage do

  let(:bike){double :bike}
  let(:van) {double :van, bikes: [bike]}

  let(:garage) {Garage.new}
  let(:bike) {Bike.new}

  let (:broken_bike) {double :bike, broken?: true}


  it "should accept a broken bike from a van" do

    #garage = Garage.new
    #broken_bike           = double :bike, broken?: true
    another_broken_bike   = double :bike, broken?: true
    van_with_broken_bikes = double :van, bikes: [broken_bike, another_broken_bike]
    working_bike          = double :bike, broken?: false

    expect(garage.bike_count).to eq(0)
    expect(van_with_broken_bikes).to receive(:release).with(another_broken_bike)
    expect(van_with_broken_bikes).to receive(:release).with(broken_bike)

    garage.accept_bikes_from_van(van_with_broken_bikes)
    expect(garage.bikes).to eq([another_broken_bike, broken_bike])
  end



  it "should be able to fix broken bikes" do
    garage.dock(broken_bike)
    expect(broken_bike).to receive(:fix!)
    garage.fixes_all_bikes
  end

end
