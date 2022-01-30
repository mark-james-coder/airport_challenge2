require 'plane'

describe Plane do

  it 'can be initialized with a status of flying' do
    plane = Plane.new(:flying)
    expect(plane.status).to eq :flying
  end

  it 'can be initialized with a status of landed' do
    plane = Plane.new(:landed)
    expect(plane.status).to eq :landed
  end

end
