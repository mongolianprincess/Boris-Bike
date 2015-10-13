require 'docking_station.rb'

describe DockingStation do
  it "should respond to the release_bike method" do
    expect(DockingStation.new).to respond_to :release_bike
  end

  it { is_expected.to respond_to :release_bike }

end
