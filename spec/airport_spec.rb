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
end
