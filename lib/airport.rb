class Airport

attr_reader :hangar, :capacity
attr_accessor :weather

DEFAULT_CAPACITY = 5

  def initialize(capacity=DEFAULT_CAPACITY)
    @hangar = []
    @capacity = capacity
    @weather = "calm"
  end

  def land(plane)
    fail "Airport is full" if full?
    fail "Plane cannot land due to stormy weather" if stormy?
    plane.status = 'landed'
    @hangar.push plane
  end

  def take_off(plane)
    fail "Plane cannot take off due to stormy weather" if stormy?
    plane.status = 'flying'
    @hangar.pop
  end

private

  def full?
    hangar.count >= capacity
  end

  def stormy?
    weather == "stormy"
  end

end
