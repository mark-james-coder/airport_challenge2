class Weather

attr_reader :condition  

  def initialize
    @condition = 'calm' unless rand(4) > 2
  end

end
