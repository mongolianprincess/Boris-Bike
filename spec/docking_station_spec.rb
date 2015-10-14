require 'docking_station.rb'

  describe DockingStation do
    it { is_expected.to respond_to :release_bike }
  end

  describe DockingStation do
    it "creates a bike when release_bike is called" do
      bike = subject.release_bike
      expect(bike).to be_instance_of Bike
      expect(bike).to be_working
  end

end
