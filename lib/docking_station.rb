require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity
  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end


  def release_bike
    raise 'shit there is no bike!' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'docking station is full' if full?
    # raise error when bike is equal or more than 20
    @bikes << bike
    # if not, push bike into @bikes array
  end

  private
  def full?
    @bikes.length >= @capacity
  end

  def empty?
    bikes.empty?
  end
end
