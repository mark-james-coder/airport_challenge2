class Airport

attr_reader :hangar

  def initialize
    @hangar = []
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
