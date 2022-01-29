require 'airport'

describe Airport do

  let(:plane) { double :plane }

  it 'instructs a plane to land' do
    allow(plane).to receive(:status=).with("landed")
    subject.land(plane)
    expect(subject.hangar[0]).to eq plane
  end
  it 'instructs a plane to take off' do
    allow(plane).to receive(:status=).with("landed")
    subject.land(plane)
    allow(plane).to receive(:status=).with("flying")
    subject.take_off(plane)
    expect(subject.hangar[0]).to eq nil
  end
  it 'has a default capacity of 5 planes' do
    expect(subject.capacity).to eq 5
  end
  it 'has a default capacity that can be overridden' do
    num = rand(10)
    airport = Airport.new(num)
    expect(airport.capacity).to eq num
  end
  it 'prevents landing when the airport is full' do
    allow(plane).to receive(:status=).with("landed")
    subject.capacity.times { subject.land(plane) }
    expect { subject.land(plane) }.to raise_error "Airport is full"
  end
  it 'prevents landing when weather is stormy' do
    airport = Airport.new
    airport.weather = "stormy"
    p "the weather is #{airport.weather}"
    allow(plane).to receive(:status=).with("landed")
    expect { airport.land(plane) }.to raise_error "Plane cannot land due to stormy weather"
  end
end
