require 'garage'

describe Garage do

  let(:bike){double :bike}
  let(:van) {double :van, bikes: [bike]}

  it "should accept a broken bike from a van" do

    garage = Garage.new

    expect(garage.bikes_count).to eq(0)
    garage.accept_bikes_from_van(van)
    expect(garage.bikes_count).to eq(1)
  end

  it "should fix the bike" do
  end
end
