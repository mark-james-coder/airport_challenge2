class Airport

attr_reader :hangar

  def initialize
    @hangar = []
  end

  def land(plane)
    plane.status = 'landed'
    @hangar.push plane
  end

end
