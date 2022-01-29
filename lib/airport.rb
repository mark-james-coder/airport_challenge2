class Airport

attr_reader :hangar, :capacity

DEFAULT_CAPACITY = 5

  def initialize(capacity=DEFAULT_CAPACITY)
    @hangar = []
    @capacity = capacity
  end

  def land(plane)
    fail "Airport is full" if full?
    plane.status = 'landed'
    @hangar.push plane
  end

  def take_off(plane)
    plane.status = 'flying'
    @hangar.pop
  end

private

  def full?
    hangar.count >= capacity
  end

end
