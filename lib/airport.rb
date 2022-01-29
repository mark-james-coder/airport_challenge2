class Airport

attr_reader :hangar, :capacity

DEFAULT_CAPACITY = 5

  def initialize(capacity=DEFAULT_CAPACITY)
    @hangar = []
    @capacity = capacity
  end

  def land(plane)
    plane.status = 'landed'
    @hangar.push plane
  end

  def take_off(plane)
    plane.status = 'flying'
    @hangar.pop
  end

end
