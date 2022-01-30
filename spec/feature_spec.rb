require '/Users/Mark/projects/airport_challenge3/lib/airport.rb'

class FeatureTest

  def initialize
    @airport = Airport.new
    @plane = Plane.new(:flying)
    @plane2 = Plane.new(:flying)
  end

  def run_tests
    puts "An instance of Airport is created with an empty hangar, a default capacity of 5 and randomly set weather."
    puts "You can see the airport here."
    p @airport
    puts "For the purpose of the following tests, the airport has been set with calm weather conditions."
    @airport.weather = :calm
    puts "A plane, which is currently flying is instantiated."
    puts "You can see the plane here:"
    p @plane
    puts "The airport instructs the plane to land."
    puts "As the weather is calm and the airport has space, the plane successully lands."
    puts "You can now see the plane in the airport hangar with a status of 'landed'."
    @airport.land(@plane)
    p @airport.hangar
    puts "The airport later instructs the plane to take off."
    puts "As the weather is still calm, the plane successfully takes off."
    puts "You can see the empty hangar below:"
    @airport.take_off(@plane)
    p @airport.hangar
    puts "You can also see that the plane is now flying:"
    p @plane
    puts "The weather now changes to 'stormy'. We can verify this by inspecting the airport object:"
    @airport.weather = :stormy
    p @airport
    puts "Although the weather is stormy, the airport insructs another currently flying plane #{@plane2} to land."
    puts "This results in a runtime error, with a message letting us know that the plane cannot land due to the stormy weather."
    @airport.land(@plane2)
  end

end
