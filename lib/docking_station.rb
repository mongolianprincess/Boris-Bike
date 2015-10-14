require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'shit there is no bike!' unless @bikes.length > 0
    @bikes.pop
  end

  def dock(bike)
    raise 'docking station is full' if @bikes.length >= 20
    # raise error when bike is equal or more than 20
    @bikes << bike
    # if not, push bike into @bikes array
  end

end
