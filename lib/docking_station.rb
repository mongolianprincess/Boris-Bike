require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    raise 'shit there is no bike!' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike #docking the bike at the slot available at docking station
  end

end
