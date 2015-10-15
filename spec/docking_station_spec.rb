require 'docking_station.rb'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it "creates a bike when release_bike is called" do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to be_working
   end

    it { is_expected.to respond_to(:dock).with(1).arguments }

    it "raises error when there are no bikes available" do
      expect {subject.release_bike}.to raise_error 'shit there is no bike!'
    end

    it "raises error when a docking station is full" do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error('docking station is full')
      #when 21st bike is docked, it will raise error since capacity if 20
    end

end
